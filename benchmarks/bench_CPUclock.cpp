#include <cstdint>
#include <cmath>
#include <iostream>
#include <vector>
#include <random>
#include <chrono>
#include <cstddef>
#include <array>
#include <fast_isqrt/fast_isqrt.hpp>

using namespace fast_isqrt;

// x86_64 用のヘッダインクルード
#if defined(__x86_64__)
#include <x86intrin.h>
#endif

// CPU サイクル（または高精度タイマー）計測関数
static inline uint64_t get_cpu_cycles(void) {
#if defined(__x86_64__)
    // GCC/Clang 共通で最も安全な x86 サイクル計測
    return (uint64_t)__rdtsc();

#elif defined(__aarch64__)
    uint64_t val;
    // メモリバリア（"memory"）を指定して、計測対象コードとの入れ替えを防止
    asm volatile("mrs %0, cntvct_el0" : "=r" (val) :: "memory");
    return val;

#else
    // その他のアーキテクチャかつ Clang の場合のフォールバック
    #if defined(__clang__)
        return (uint64_t)__builtin_readcyclecounter();
    #else
        // GCCで未知のアーキテクチャの場合はエラーにするか0を返す
        #warning "get_cpu_cycles is not supported on this architecture with GCC."
        return 0;
    #endif
#endif
}

template <std::size_t Mod>
struct ModNonSquares {
    static_assert(Mod <= UINT8_MAX + 1);

    struct Data {
        std::array<uint8_t, Mod> values{};
        std::size_t count = 0;

        constexpr std::size_t size() const noexcept { return count; }

        constexpr uint8_t operator[](std::size_t i) const noexcept { return values[i]; }
    };

    static constexpr Data data = []() {
        Data result{};
        std::array<bool, Mod> is_square{};

        for (std::size_t x = 0; x < Mod; ++x) {
            const std::size_t r = (x * x) % Mod;
            is_square[r] = true;
        }

        for (std::size_t r = 0; r < Mod; ++r) {
            if (!is_square[r]) {
                result.values[result.count++] = static_cast<uint8_t>(r);
            }
        }

        return result;
    }();
};


template <std::size_t Mod>
struct ModNonQuads {
    static_assert(Mod <= UINT8_MAX + 1);

    struct Data {
        std::array<uint8_t, Mod> values{};
        std::size_t count = 0;

        constexpr std::size_t size() const noexcept { return count; }

        constexpr uint8_t operator[](std::size_t i) const noexcept { return values[i]; }
    };

    static constexpr Data data = []() {
        Data result{};
        std::array<bool, Mod> is_quad{};

        for (std::size_t x = 0; x < Mod; ++x) {
            const std::size_t x2 = (x * x) % Mod;
            const std::size_t x4 = (x2 * x2) % Mod;

            is_quad[x4] = true;
        }

        for (std::size_t r = 0; r < Mod; ++r) {
            if (!is_quad[r]) {
                result.values[result.count++] = static_cast<uint8_t>(r);
            }
        }

        return result;
    }();
};

constexpr auto NON_SQUARE_MOD64 = ModNonSquares<64>::data;
constexpr auto NON_QUAD_MOD64 = ModNonQuads<64>::data;



int main() {

    // std::cout << "\nPerformance & Latency Benchmark (Speed Test - CPU Cycles)..." << std::endl;



    // std::cout << "\n [isqrt64]" << std::endl;
    // std::cout << "--------------------------------------------------" << std::endl;

    // for (auto reptime : {0, 1, 2}) {
    //     std::mt19937_64 rng_speed(13337 + reptime);
    //     const int SPEED_SAMPLES = 100000000;
    //     std::vector<uint64_t> bench_data(SPEED_SAMPLES);

    //     for (int i = 0; i < SPEED_SAMPLES; ++i) {
    //         bench_data[i] = rng_speed();
    //     }

    //     // ウォームアップ
    //     volatile uint64_t dummy = 0;
    //     for (int i = 0; i < 100000; ++i) {
    //         dummy += isqrt64(bench_data[i]);
    //     }

    //     // 本計測
    //     volatile uint64_t sink = 0;
    //     const uint64_t c_start = get_cpu_cycles();
    //     for (int i = 0; i < SPEED_SAMPLES; ++i) {
    //         sink += isqrt64(bench_data[i]);
    //     }

    //     const uint64_t c_end = get_cpu_cycles();
    //     const uint64_t total_cycles = c_end - c_start;
    //     const double cycles_per_op = static_cast<double>(total_cycles) / SPEED_SAMPLES;

    //     std::cout << " Benchmark Results (isqrt64):" << std::endl;
    //     std::cout << "   - Data Size    : " << SPEED_SAMPLES << " elements (Random 64-bit)" << std::endl;
    //     std::cout << "   - Total Cycles : " << total_cycles << " cycles" << std::endl;
    //     std::cout << "   - Avg Speed    : " << cycles_per_op << " cycles / call" << std::endl;
    //     std::cout << "--------------------------------------------------" << std::endl;
    // }



    // std::cout << "\n [isqrt128]" << std::endl;
    // std::cout << "--------------------------------------------------" << std::endl;

    // for (auto reptime : {0, 1, 2}) {
    //     std::mt19937_64 rng_speed(13337 + reptime);
    //     const int SPEED_SAMPLES = 100000000;
    //     std::vector<uint128_t> bench_data(SPEED_SAMPLES);

    //     for (int i = 0; i < SPEED_SAMPLES; ++i) {
    //         const uint64_t hi = rng_speed();
    //         const uint64_t lo = rng_speed();

    //         bench_data[i] = (static_cast<uint128_t>(hi) << 64) | lo;
    //     }

    //     // ウォームアップ
    //     volatile uint64_t dummy = 0;
    //     for (int i = 0; i < 100000; ++i) {
    //         dummy += isqrt128(bench_data[i]);
    //     }

    //     // 本計測
    //     volatile uint64_t sink = 0;
    //     const uint64_t c_start = get_cpu_cycles();

    //     for (int i = 0; i < SPEED_SAMPLES; ++i) {
    //         sink += isqrt128(bench_data[i]);
    //     }

    //     const uint64_t c_end = get_cpu_cycles();

    //     const uint64_t total_cycles = c_end - c_start;
    //     const double cycles_per_op = static_cast<double>(total_cycles) / SPEED_SAMPLES;

    //     std::cout << " Benchmark Results (isqrt128):" << std::endl;
    //     std::cout << "   - Data Size    : " << SPEED_SAMPLES << " elements (Random 128-bit)" << std::endl;
    //     std::cout << "   - Total Cycles : " << total_cycles << " cycles" << std::endl;
    //     std::cout << "   - Avg Speed    : " << cycles_per_op << " cycles / call" << std::endl;
    //     std::cout << "--------------------------------------------------" << std::endl;
    // }



    // std::cout << "\n [is_perfect_square64]" << std::endl;
    // std::cout << "--------------------------------------------------" << std::endl;

    // for (auto reptime : {0, 1, 2}) {

    //     std::mt19937_64 rng(13337 + reptime);
    //     const int SPEED_SAMPLES = 100000000;
    //     std::vector<uint64_t> random_data(SPEED_SAMPLES);
    //     std::vector<uint64_t> square_data(SPEED_SAMPLES);
    //     std::vector<uint64_t> nonsquare_data(SPEED_SAMPLES);

    //     for (int i = 0; i < SPEED_SAMPLES; ++i) {
    //         random_data[i] = rng();
    //         uint64_t r = rng() & UINT32_MAX;
    //         square_data[i] = r * r;

    //         uint8_t non_sq = NON_SQUARE_MOD64[rng() % NON_SQUARE_MOD64.size()];
    //         nonsquare_data[i] = (rng() & ~0x3FULL) | non_sq;
    //     }

    //     // Random データ計測 (Early Reject 性能)
    //     volatile uint64_t hits_rand = 0;
    //     uint64_t c0 = get_cpu_cycles();
    //     for (int i = 0; i < SPEED_SAMPLES; ++i) {
    //         hits_rand += is_perfect_square64(random_data[i]);
    //     }
    //     uint64_t c1 = get_cpu_cycles();

    //     // Pure Square データ計測 (Worst-case 性能)
    //     volatile uint64_t hits_sq = 0;
    //     uint64_t c2 = get_cpu_cycles();
    //     for (int i = 0; i < SPEED_SAMPLES; ++i) {
    //         hits_sq += is_perfect_square64(square_data[i]);
    //     }
    //     uint64_t c3 = get_cpu_cycles();

    //     // Non Square データ計測 (Best-case 性能)
    //     volatile uint64_t hits_nonsq = 0;
    //     uint64_t c4 = get_cpu_cycles();
    //     for (int i = 0; i < SPEED_SAMPLES; ++i) {
    //         hits_nonsq += is_perfect_square64(nonsquare_data[i]);
    //     }
    //     uint64_t c5 = get_cpu_cycles();

    //     double cycles_rand  = static_cast<double>(c1 - c0) / SPEED_SAMPLES;
    //     double cycles_sq    = static_cast<double>(c3 - c2) / SPEED_SAMPLES;
    //     double cycles_nonsq = static_cast<double>(c5 - c4) / SPEED_SAMPLES;

    //     std::cout << " Benchmark Results (is_perfect_square64):" << std::endl;
    //     std::cout << "   - Random Inputs (Early Reject) : " << cycles_rand  << " cycles / call (Hits: " << hits_rand  << ")" << std::endl;
    //     std::cout << "   - Pure Squares  (Worst-case)   : " << cycles_sq    << " cycles / call (Hits: " << hits_sq    << ")" << std::endl;
    //     std::cout << "   - Non-quadratic (Best-case)    : " << cycles_nonsq << " cycles / call (Hits: " << hits_nonsq << ")" << std::endl;
    //     std::cout << "--------------------------------------------------" << std::endl;
    // }



    // std::cout << "\n [is_perfect_square128]" << std::endl;
    // std::cout << "--------------------------------------------------" << std::endl;

    // for (auto reptime : {0, 1, 2}) {

    //     std::mt19937_64 rng(13337 + reptime);
    //     const int SPEED_SAMPLES = 100000000;
    //     std::vector<uint128_t> random_data(SPEED_SAMPLES);
    //     std::vector<uint128_t> square_data(SPEED_SAMPLES);
    //     std::vector<uint128_t> nonsquare_data(SPEED_SAMPLES);

    //     for (int i = 0; i < SPEED_SAMPLES; ++i) {
    //         uint64_t hi = rng();
    //         uint64_t lo = rng();
    //         random_data[i] = (static_cast<uint128_t>(hi) << 64) | lo;

    //         uint128_t r = static_cast<uint128_t>(rng()); // 64bit r
    //         square_data[i] = r * r;

    //         hi = rng();
    //         lo = rng();
    //         uint8_t non_sq1 = NON_SQUARE_MOD64[rng() % NON_SQUARE_MOD64.size()];
    //         lo = (lo & ~0x3FULL) | non_sq1;
    //         nonsquare_data[i] = (static_cast<uint128_t>(hi) << 64) | lo;
    //     }

    //     // Random データ計測 (Early Reject 性能)
    //     volatile uint64_t hits_rand = 0;
    //     uint64_t c0 = get_cpu_cycles();
    //     for (int i = 0; i < SPEED_SAMPLES; ++i) {
    //         hits_rand += is_perfect_square128(random_data[i]);
    //     }
    //     uint64_t c1 = get_cpu_cycles();

    //     // Pure Square データ計測 (Worst-case 性能)
    //     volatile uint64_t hits_sq = 0;
    //     uint64_t c2 = get_cpu_cycles();
    //     for (int i = 0; i < SPEED_SAMPLES; ++i) {
    //         hits_sq += is_perfect_square128(square_data[i]);
    //     }
    //     uint64_t c3 = get_cpu_cycles();

    //     // Non Square データ計測 (Best-case 性能)
    //     volatile uint64_t hits_nonsq = 0;
    //     uint64_t c4 = get_cpu_cycles();
    //     for (int i = 0; i < SPEED_SAMPLES; ++i) {
    //         hits_nonsq += is_perfect_square128(nonsquare_data[i]);
    //     }
    //     uint64_t c5 = get_cpu_cycles();

    //     double cycles_rand  = static_cast<double>(c1 - c0) / SPEED_SAMPLES;
    //     double cycles_sq    = static_cast<double>(c3 - c2) / SPEED_SAMPLES;
    //     double cycles_nonsq = static_cast<double>(c5 - c4) / SPEED_SAMPLES;

    //     std::cout << " Benchmark Results (is_perfect_square128):" << std::endl;
    //     std::cout << "   - Random Inputs (Early Reject) : " << cycles_rand  << " cycles / call (Hits: " << hits_rand  << ")" << std::endl;
    //     std::cout << "   - Pure Squares  (Worst-case)   : " << cycles_sq    << " cycles / call (Hits: " << hits_sq    << ")" << std::endl;
    //     std::cout << "   - Non-quadratic (Best-case)    : " << cycles_nonsq << " cycles / call (Hits: " << hits_nonsq << ")" << std::endl;
    //     std::cout << "--------------------------------------------------" << std::endl;
    // }



    std::cout << "\n [is_perfect_fourth_power64]" << std::endl;
    std::cout << "--------------------------------------------------" << std::endl;

    for (auto reptime : {0, 1, 2}) {

        std::mt19937_64 rng(13337 + reptime);
        const int SPEED_SAMPLES = 100000000;
        std::vector<uint64_t> random_data(SPEED_SAMPLES);
        std::vector<uint64_t> quad_data(SPEED_SAMPLES);
        std::vector<uint64_t> nonquad_data(SPEED_SAMPLES);

        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            random_data[i] = rng();
            uint64_t r = rng() & UINT16_MAX;
            uint64_t r2 = r * r;
            quad_data[i] = r2 * r2;

            uint8_t non_quad = NON_QUAD_MOD64[rng() % NON_QUAD_MOD64.size()];
            nonquad_data[i] = (rng() & ~0x3FULL) | non_quad;
        }

        // Random データ計測 (Early Reject 性能)
        volatile uint64_t hits_rand = 0;
        uint64_t c0 = get_cpu_cycles();
        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            hits_rand += is_perfect_fourth_power64(random_data[i]);
        }
        uint64_t c1 = get_cpu_cycles();

        // Pure Quad データ計測 (Worst-case 性能)
        volatile uint64_t hits_quad = 0;
        uint64_t c2 = get_cpu_cycles();
        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            hits_quad += is_perfect_fourth_power64(quad_data[i]);
        }
        uint64_t c3 = get_cpu_cycles();

        // Non Quad データ計測 (Best-case 性能)
        volatile uint64_t hits_nonquad = 0;
        uint64_t c4 = get_cpu_cycles();
        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            hits_nonquad += is_perfect_fourth_power64(nonquad_data[i]);
        }
        uint64_t c5 = get_cpu_cycles();

        double cycles_rand    = static_cast<double>(c1 - c0) / SPEED_SAMPLES;
        double cycles_quad    = static_cast<double>(c3 - c2) / SPEED_SAMPLES;
        double cycles_nonquad = static_cast<double>(c5 - c4) / SPEED_SAMPLES;

        std::cout << " Benchmark Results (is_perfect_fourth_power64):" << std::endl;
        std::cout << "   - Random Inputs (Early Reject) : " << cycles_rand    << " cycles / call (Hits: " << hits_rand    << ")" << std::endl;
        std::cout << "   - Pure Quads  (Worst-case)     : " << cycles_quad    << " cycles / call (Hits: " << hits_quad    << ")" << std::endl;
        std::cout << "   - Non-quadratic (Best-case)    : " << cycles_nonquad << " cycles / call (Hits: " << hits_nonquad << ")" << std::endl;
        std::cout << "--------------------------------------------------" << std::endl;
    }



    std::cout << "\n [is_perfect_fourth_power128]" << std::endl;
    std::cout << "--------------------------------------------------" << std::endl;

    for (auto reptime : {0, 1, 2}) {

        std::mt19937_64 rng(13337 + reptime);
        const int SPEED_SAMPLES = 100000000;
        std::vector<uint128_t> random_data(SPEED_SAMPLES);
        std::vector<uint128_t> quad_data(SPEED_SAMPLES);
        std::vector<uint128_t> nonquad_data(SPEED_SAMPLES);

        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            uint64_t hi = rng();
            uint64_t lo = rng();
            random_data[i] = (static_cast<uint128_t>(hi) << 64) | lo;

            uint128_t r = static_cast<uint128_t>(rng() & static_cast<uint64_t>(UINT32_MAX)); // 64bit r
            uint128_t r2 = r * r;
            quad_data[i] = r2 * r2;

            hi = rng();
            lo = rng();
            uint8_t non_quad1 = NON_QUAD_MOD64[rng() % NON_QUAD_MOD64.size()];
            lo = (lo & ~0x3FULL) | non_quad1;
            nonquad_data[i] = (static_cast<uint128_t>(hi) << 64) | lo;
        }

        // Random データ計測 (Early Reject 性能)
        volatile uint64_t hits_rand = 0;
        uint64_t c0 = get_cpu_cycles();
        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            hits_rand += is_perfect_fourth_power128(random_data[i]);
        }
        uint64_t c1 = get_cpu_cycles();

        // Pure Quad データ計測 (Worst-case 性能)
        volatile uint64_t hits_quad = 0;
        uint64_t c2 = get_cpu_cycles();
        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            hits_quad += is_perfect_fourth_power128(quad_data[i]);
        }
        uint64_t c3 = get_cpu_cycles();

        // Non Quad データ計測 (Best-case 性能)
        volatile uint64_t hits_nonquad = 0;
        uint64_t c4 = get_cpu_cycles();
        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            hits_nonquad += is_perfect_fourth_power128(nonquad_data[i]);
        }
        uint64_t c5 = get_cpu_cycles();

        double cycles_rand    = static_cast<double>(c1 - c0) / SPEED_SAMPLES;
        double cycles_quad    = static_cast<double>(c3 - c2) / SPEED_SAMPLES;
        double cycles_nonquad = static_cast<double>(c5 - c4) / SPEED_SAMPLES;

        std::cout << " Benchmark Results (is_perfect_fourth_power128):" << std::endl;
        std::cout << "   - Random Inputs (Early Reject) : " << cycles_rand    << " cycles / call (Hits: " << hits_rand   << ")" << std::endl;
        std::cout << "   - Pure Quads    (Worst-case)   : " << cycles_quad    << " cycles / call (Hits: " << hits_quad    << ")" << std::endl;
        std::cout << "   - Non-quadratic (Best-case)    : " << cycles_nonquad << " cycles / call (Hits: " << hits_nonquad << ")" << std::endl;
        std::cout << "--------------------------------------------------" << std::endl;
    }



    std::cout << "\n[OK] Benchmark Completed Successfully!\n";

    return 0;
}