#include <cstdint>
#include <cmath>
#include <iostream>
#include <vector>
#include <random>
#include <chrono>
#include <fast_isqrt/fast_isqrt.hpp>

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

using namespace fast_isqrt;

int main() {

    std::cout << "\nPerformance & Latency Benchmark (Speed Test - CPU Cycles)..." << std::endl;

    std::cout << "\n [sqrt64]" << std::endl;
    std::cout << "--------------------------------------------------" << std::endl;

    for (auto reptime : {0, 1, 2}) {

        std::mt19937_64 rng_speed(13337 + reptime);
        const int SPEED_SAMPLES = 100000000; // 1億回試行
        std::vector<uint64_t> bench_data(SPEED_SAMPLES);

        // 各種ビット長（全領域）からランダムに 64bit 整数を生成
        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            bench_data[i] = rng_speed();
        }

        // ウォームアップ (キャッシュ・CPUクロックの安定化)
        volatile uint64_t dummy = 0;
        for (int i = 0; i < 100000; ++i) {
            dummy += isqrt64(bench_data[i]);
        }

        // 本計測
        volatile uint64_t sink = 0;
        uint64_t c_start = get_cpu_cycles();

        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            sink += isqrt64(bench_data[i]);
        }

        uint64_t c_end = get_cpu_cycles();

        uint64_t total_cycles = c_end - c_start;
        double cycles_per_op = static_cast<double>(total_cycles) / SPEED_SAMPLES;

        std::cout << " Benchmark Results (isqrt64):" << std::endl;
        std::cout << "   - Data Size    : " << SPEED_SAMPLES << " elements (Random 64-bit)" << std::endl;
        std::cout << "   - Total Cycles : " << total_cycles << " cycles" << std::endl;
        std::cout << "   - Avg Speed    : " << cycles_per_op << " cycles / call" << std::endl;
        std::cout << "--------------------------------------------------" << std::endl;
    }

    std::cout << "\n [sqrt128]" << std::endl;
    std::cout << "--------------------------------------------------" << std::endl;

    for (auto reptime : {0, 1, 2}) {

        std::mt19937_64 rng_speed(13337 + reptime);
        const int SPEED_SAMPLES = 100000000; // 1億回試行
        std::vector<uint128_t> bench_data(SPEED_SAMPLES);

        // 各種ビット長（全領域）からランダムに 128bit 整数を生成
        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            uint64_t hi = rng_speed();
            uint64_t lo = rng_speed();
            bench_data[i] = (static_cast<uint128_t>(hi) << 64) | lo;
        }

        // ウォームアップ (キャッシュ・CPUクロックの安定化)
        volatile uint64_t dummy = 0;
        for (int i = 0; i < 100000; ++i) {
            dummy += isqrt128(bench_data[i]);
        }

        // 本計測
        volatile uint64_t sink = 0;
        uint64_t c_start = get_cpu_cycles();

        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            sink += isqrt128(bench_data[i]);
        }

        uint64_t c_end = get_cpu_cycles();

        uint64_t total_cycles = c_end - c_start;
        double cycles_per_op = static_cast<double>(total_cycles) / SPEED_SAMPLES;

        std::cout << " Benchmark Results (isqrt128):" << std::endl;
        std::cout << "   - Data Size    : " << SPEED_SAMPLES << " elements (Random 128-bit)" << std::endl;
        std::cout << "   - Total Cycles : " << total_cycles << " cycles" << std::endl;
        std::cout << "   - Avg Speed    : " << cycles_per_op << " cycles / call" << std::endl;
        std::cout << "--------------------------------------------------" << std::endl;
    }

    // -------------------------------------------------------------------------
    // 3. is_perfect_square64 Benchmark (Random vs Pure Squares)
    // -------------------------------------------------------------------------
    std::cout << "\n [is_perfect_square64]" << std::endl;
    std::cout << "--------------------------------------------------" << std::endl;

    for (auto reptime : {0, 1, 2}) {

        std::mt19937_64 rng(13337 + reptime);
        const int SPEED_SAMPLES = 100000000;
        std::vector<uint64_t> random_data(SPEED_SAMPLES);
        std::vector<uint64_t> square_data(SPEED_SAMPLES);

        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            random_data[i] = rng();
            uint64_t r = rng() & UINT32_MAX;
            square_data[i] = r * r;
        }

        // Random データ計測 (Early Reject 性能)
        volatile uint64_t hits_rand = 0;
        uint64_t c0 = get_cpu_cycles();
        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            hits_rand += is_perfect_square64(random_data[i]);
        }
        uint64_t c1 = get_cpu_cycles();

        // Pure Square データ計測 (Worst-case 性能)
        volatile uint64_t hits_sq = 0;
        uint64_t c2 = get_cpu_cycles();
        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            hits_sq += is_perfect_square64(square_data[i]);
        }
        uint64_t c3 = get_cpu_cycles();

        double cycles_rand = static_cast<double>(c1 - c0) / SPEED_SAMPLES;
        double cycles_sq   = static_cast<double>(c3 - c2) / SPEED_SAMPLES;

        std::cout << " Benchmark Results (is_perfect_square64):" << std::endl;
        std::cout << "   - Random Inputs (Early Reject) : " << cycles_rand << " cycles / call (Hits: " << hits_rand << ")" << std::endl;
        std::cout << "   - Pure Squares  (Worst-case)   : " << cycles_sq   << " cycles / call (Hits: " << hits_sq << ")" << std::endl;
        std::cout << "--------------------------------------------------" << std::endl;
    }

    // -------------------------------------------------------------------------
    // 4. is_perfect_square128 Benchmark (Random vs Pure Squares)
    // -------------------------------------------------------------------------
    std::cout << "\n [is_perfect_square128]" << std::endl;
    std::cout << "--------------------------------------------------" << std::endl;

    for (auto reptime : {0, 1, 2}) {

        std::mt19937_64 rng(13337 + reptime);
        const int SPEED_SAMPLES = 100000000;
        std::vector<uint128_t> random_data(SPEED_SAMPLES);
        std::vector<uint128_t> square_data(SPEED_SAMPLES);

        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            uint64_t hi = rng();
            uint64_t lo = rng();
            random_data[i] = (static_cast<uint128_t>(hi) << 64) | lo;

            uint128_t r = static_cast<uint128_t>(rng()); // 64bit r
            square_data[i] = r * r;
        }

        // Random データ計測 (Early Reject 性能)
        volatile uint64_t hits_rand = 0;
        uint64_t c0 = get_cpu_cycles();
        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            hits_rand += is_perfect_square128(random_data[i]);
        }
        uint64_t c1 = get_cpu_cycles();

        // Pure Square データ計測 (Worst-case 性能)
        volatile uint64_t hits_sq = 0;
        uint64_t c2 = get_cpu_cycles();
        for (int i = 0; i < SPEED_SAMPLES; ++i) {
            hits_sq += is_perfect_square128(square_data[i]);
        }
        uint64_t c3 = get_cpu_cycles();

        double cycles_rand = static_cast<double>(c1 - c0) / SPEED_SAMPLES;
        double cycles_sq   = static_cast<double>(c3 - c2) / SPEED_SAMPLES;

        std::cout << " Benchmark Results (is_perfect_square128):" << std::endl;
        std::cout << "   - Random Inputs (Early Reject) : " << cycles_rand << " cycles / call (Hits: " << hits_rand << ")" << std::endl;
        std::cout << "   - Pure Squares  (Worst-case)   : " << cycles_sq   << " cycles / call (Hits: " << hits_sq << ")" << std::endl;
        std::cout << "--------------------------------------------------" << std::endl;
    }

    std::cout << "\n[OK] Benchmark Completed Successfully!\n";
    return 0;
}