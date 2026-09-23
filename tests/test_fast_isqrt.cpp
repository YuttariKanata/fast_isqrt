#ifdef NDEBUG
#undef NDEBUG
#endif

#include <cstdint>
#include <cmath>
#include <iostream>
#include <vector>
#include <random>
#include <chrono>
#include <iomanip>
#include <thread>
#include <algorithm>
#include <fast_isqrt/fast_isqrt.hpp>

using namespace fast_isqrt;
// --------------------------------------------------
// 検証用ヘルパー関数
// --------------------------------------------------

// nsq(n) == x が厳密に floor(sqrt(n)) であるかの数学的検証
// 条件: x^2 <= n < (x + 1)^2
[[nodiscard]] static inline bool verify_isqrt(uint128_t n, uint64_t x) noexcept {

    const uint128_t x2 = static_cast<uint128_t>(x) * x;
    if (x2 > n) return false;
    
    // x + 1 が 2^64 を超える場合のオーバーフローチェック
    if (x == UINT64_MAX) {
        return true;
        // uint128_t の max に対して (x+1)^2 > max128 は成り立つ
    }
    
    const uint128_t next_x2 = (static_cast<uint128_t>(x) + 1) * (static_cast<uint128_t>(x) + 1);
    return n < next_x2;
}

// IsqrtSquare128 の検証
[[nodiscard]] static inline bool verify_isqrt128_with_square(uint128_t n, const IsqrtSquare128 res) noexcept {
    if (!verify_isqrt(n, res.root)) return false;
    const uint128_t expected_sq = static_cast<uint128_t>(res.root) * res.root;
    return (res.sq == expected_sq) && (res.sq <= n);
}

// IsqrtRemainder128 の検証
[[nodiscard]] static inline bool verify_isqrt128_with_remainder(uint128_t n, const IsqrtRemainder128 res) noexcept {
    if (!verify_isqrt(n, res.root)) return false;
    const uint128_t x_sq = static_cast<uint128_t>(res.root) * res.root;
    return (res.remainder == (n - x_sq)) && (x_sq <= n);
}

// IsqrtSquare64 の検証
[[nodiscard]] static inline bool verify_isqrt64_with_square(uint128_t n, const IsqrtSquare64 res) noexcept {
    if (!verify_isqrt(static_cast<uint128_t>(n), res.root)) return false;
    const uint128_t expected_sq = static_cast<uint128_t>(res.root) * res.root;
    return (res.sq == expected_sq) && (res.sq <= n);
}

// IsqrtRemainder64 の検証
[[nodiscard]] static inline bool verify_isqrt64_with_remainder(uint128_t n, const IsqrtRemainder64 res) noexcept {
    if (!verify_isqrt(n, res.root)) return false;
    const uint128_t x_sq = static_cast<uint128_t>(res.root) * res.root;
    return (static_cast<uint128_t>(res.remainder) == (n - x_sq)) && (x_sq <= n);
}

// --------------------------------------------------
// 統合テストヘルパー
// --------------------------------------------------

[[gnu::always_inline, nodiscard]] static inline bool test_isqrt_all(uint128_t n) noexcept {

    const uint64_t out_root128 = isqrt128(n);
    if (!verify_isqrt(n, out_root128)) [[unlikely]] return false;

    const auto sq_res128 = isqrt128_with_square(n);
    if (sq_res128.root != out_root128) [[unlikely]] return false;
    if (!verify_isqrt128_with_square(n, sq_res128)) [[unlikely]] return false;

    const auto rem_res128 = isqrt128_with_remainder(n);
    if (rem_res128.root != out_root128) [[unlikely]] return false;
    if (!verify_isqrt128_with_remainder(n, rem_res128)) [[unlikely]] return false;

    if (n <= UINT64_MAX) {
        const uint64_t n64 = static_cast<uint64_t>(n);
        const uint64_t out_root64 = isqrt64(n64);

        if (!verify_isqrt(n, out_root64)) [[unlikely]] return false;

        const auto sq_res64 = isqrt64_with_square(n64);
        if (sq_res64.root != out_root64) [[unlikely]] return false;
        if (!verify_isqrt64_with_square(n, sq_res64)) [[unlikely]] return false;

        const auto rem_res64 = isqrt64_with_remainder(n64);
        if (rem_res64.root != out_root64) [[unlikely]] return false;
        if (!verify_isqrt64_with_remainder(n, rem_res64)) [[unlikely]] return false;
    }

    return true;
}

// --------------------------------------------------
// 乱数生成ヘルパー
// --------------------------------------------------

// 128-bit 乱数生成器
inline uint128_t make_rand128(std::mt19937_64& rng) {
    uint128_t hi = rng();
    uint128_t lo = rng();
    return (hi << 64) | lo;
}

// 指定した exact_bits (1〜128) の範囲内の乱数を生成
inline uint128_t make_rand128_with_exact_bits(std::mt19937_64& rng, int bits) {
    if (bits <= 0) return 0;
    if (bits > 128) bits = 128;

    uint128_t val = make_rand128(rng);
    
    if (bits < 128) {
        uint128_t mask = (static_cast<uint128_t>(1) << bits) - 1;
        val &= mask;
    }

    val |= (static_cast<uint128_t>(1) << (bits - 1));
    return val;
}

// --------------------------------------------------
// テスト用関数
// --------------------------------------------------

[[gnu::always_inline]] inline void test_one(uint128_t n) {
    if (!test_isqrt_all(n)) [[unlikely]] {
        std::cerr << std::format("FAILED: n = 0x{:016x}{:016x}\n",
            static_cast<uint64_t>(n >> 64),
            static_cast<uint64_t>(n));

        std::exit(1);
    }

    return;
}

void test_range(uint128_t lo, uint128_t hi) {
    if (lo > hi) [[unlikely]] return;

    // 2^128 個の要素はテストしない。
    constexpr uint128_t UINT128_MAX = std::numeric_limits<uint128_t>::max();
    if (lo == 0 && hi == UINT128_MAX) [[unlikely]] {
        std::cerr << "ERROR: test_range(0, UINT128_MAX) is not allowed." << std::endl;
        std::exit(1);
    }

    const unsigned int num_threads = std::max(1u, std::thread::hardware_concurrency());
    const unsigned int target_threads = (num_threads > 2) ? (num_threads - 2) : 1u;

    const uint128_t count = hi - lo + 1;

    const unsigned int threads = static_cast<unsigned int>(std::min<uint128_t>(target_threads, count));

    const uint128_t base = count / threads;
    const uint128_t extra = count % threads;
    // count = base * threads + extra   (0 <= extra < threads)

    std::vector<std::jthread> workers;
    workers.reserve(threads);

    uint128_t current = lo;

    for (unsigned int i = 0; i < threads; ++i) {
        const uint128_t size = base + (i < extra ? 1 : 0);
        // [0] ~ [extra-1] : base+1
        // [extra] ~ [threads-1] : base
        // extra * (base + 1) + (threads - extra) * base = threads * base + extra

        const uint128_t begin = current;
        const uint128_t end = begin + size - 1;

        workers.emplace_back(
            [begin, end]() {
                for (uint128_t n = begin;; ++n) {
                    test_one(n);

                    if (n == end) [[unlikely]] {
                        break;
                    }
                }
            }
        );

        current = end + 1;
    }
}

int main() {
    const uint128_t U32MAX_128 = static_cast<uint128_t>(UINT32_MAX);
    const uint128_t U64MAX_128 = static_cast<uint128_t>(UINT64_MAX);
    const uint128_t U128MAX = std::numeric_limits<uint128_t>::max();


    std::cout << "[1] Basic / Edge Cases..." << std::endl;

    test_range(0, 100000);

    test_one(U32MAX_128 - 1);
    test_one(U32MAX_128);
    test_one(U32MAX_128 + 1);
    test_one(U32MAX_128 + 2);
    test_one(U32MAX_128 + 3);

    test_one(U64MAX_128 - 1);
    test_one(U64MAX_128);
    test_one(U64MAX_128 + 1);
    test_one(U64MAX_128 + 2);
    test_one(U64MAX_128 + 3);

    test_one(U128MAX - 2);
    test_one(U128MAX - 1);
    test_one(U128MAX);


    std::cout << "[2] Perfect Squares & Off-by-One Boundaries..." << std::endl;
    for (int bit = 1; bit <= 64; ++bit) {
        uint128_t x;

        if (bit == 64) {
            x = U64MAX_128;
        } else {
            x = uint128_t(1) << (bit - 1);
        }

        const uint128_t sq = x * x;

        test_one(sq - 2);
        test_one(sq - 1);
        test_one(sq);
        test_one(sq + 1);
        test_one(sq + 2);
    }


    std::cout << "[3] Bit-Length Transition Boundaries..." << std::endl;
    for (int k = 1; k <= 127; ++k) {
        const uint128_t base = uint128_t(1) << k;

        test_one(base - 2);
        test_one(base - 1);
        test_one(base);
        test_one(base + 1);
        test_one(base + 2);
    }


    std::cout << "[4] Massive Stress Test across All Bit Lengths (128M Random Samples)..." << std::endl;
    {
        std::mt19937_64 rng(42);

        constexpr int SAMPLES_PER_BIT = 1'000'000;

        for (int bit = 1; bit <= 128; ++bit) {
            for (int i = 0; i < SAMPLES_PER_BIT; ++i) {
                const uint128_t n = make_rand128_with_exact_bits(rng, bit);

                test_one(n);
            }

            if ((bit & 0xF) == 0) {
                std::cout << "  Bit lengths 1 to " << bit << " PASSED." << std::endl;
            }
        }
    }


    std::cout << "[5] Random Perfect-Square Neighborhoods (±10^6)..." << std::endl;
    {
        std::mt19937_64 rng(1361);

        constexpr int NUM_SQUARES = 100;
        constexpr uint128_t RADIUS = 1'000'000;

        for (int i = 0; i < NUM_SQUARES; ++i) {
            const uint64_t x = rng();
            const uint128_t x128 = static_cast<uint128_t>(x);
            const uint128_t sq = x128 * x128;

            const uint128_t start = (sq > RADIUS) ? sq - RADIUS : 0;

            const uint128_t end = (U128MAX - sq > RADIUS) ? sq + RADIUS : U128MAX;

            test_range(start, end);

            if (((i + 1) & 0xF) == 0) {
                std::cout << "  Square neighborhood test: " << (i + 1) << " / " << NUM_SQUARES << " passed." << std::endl;
            }
        }
    }


    std::cout << "[6] UINT64_MAX, LIMIT_104, UINT128_MAX Neighborhood [MAX-100'000'000, MAX]..." << std::endl;
    {
        constexpr uint128_t RADIUS = 100'000'000;

        test_range(U128MAX - RADIUS, U128MAX);
        test_range(U64MAX_128 - RADIUS, U64MAX_128);
    }


    std::cout << "[7] k^2 Neighborhoods (k = UINT64_MAX - 0..99, R = 1'000'000)..." << std::endl;
    {
        constexpr uint64_t K_COUNT = 100;
        constexpr uint128_t RADIUS = 1'000'000;

        for (uint64_t i = 0; i < K_COUNT; ++i) {
            const uint128_t k128 = U64MAX_128 - i;
            const uint128_t sq = k128 * k128;

            test_range(sq - RADIUS, sq + RADIUS);
        }

        for (uint64_t i = 0; i < K_COUNT; ++i) {
            const uint128_t k128 = U32MAX_128 - i;
            const uint128_t sq = k128 * k128;

            test_range(sq - RADIUS, sq + RADIUS);
        }
    }

    std::cout << "\nALL CORRECTNESS TESTS PASSED PERFECTLY!" << std::endl;

    return 0;
}