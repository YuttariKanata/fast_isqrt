#ifdef NDEBUG
#undef NDEBUG
#endif

#include <iostream>
#include <random>
#include <cassert>
#include <chrono>
#include <vector>
#include <format>
#include <cstdint>
#include <iomanip>
#include <thread>
#include <algorithm>
#include <fast_isqrt/fast_isqrt.hpp>

using namespace fast_isqrt;

[[gnu::always_inline]] inline void test_one(uint128_t n) {
    const uint64_t r = isqrt128(n);
    const bool expected = static_cast<uint128_t>(r) * r == n;
    const bool actual128 = is_perfect_square128(n);

    if (actual128 != expected) [[unlikely]] {
        std::cerr << std::format(
            "FAILED: is_perfect_square128(n)\n"
            "  n        = 0x{:016x}{:016x}\n"
            "  r        =                 0x{:016x}\n"
            "  expected = {}, actual   = {}",
            static_cast<uint64_t>(n >> 64), static_cast<uint64_t>(n), r,
            expected, actual128
        ) << std::endl;
        std::exit(1);
    }

    // 64-bit に収まる場合だけ is_perfect_square64 も検証
    if (n <= UINT64_MAX) {
        const uint64_t n64 = static_cast<uint64_t>(n);
        const bool actual64 = is_perfect_square64(n64);

        if (actual64 != expected) [[unlikely]] {
            std::cerr << std::format(
                "FAILED: is_perfect_square64(n)\n"
                "  n                        = 0x{:016x}\n"
                "  r                        = 0x{:016x}\n"
                "  expected = {}, actual   = {}",
                n64, r,
                expected, actual64
            ) << std::endl;
            std::exit(1);
        }
    }
}

[[gnu::always_inline]] inline void test_one(uint128_t n, bool expected) {
    const bool actual128 = is_perfect_square128(n);

    if (actual128 != expected) [[unlikely]] {
        const uint64_t r = isqrt128(n);
        std::cerr << std::format(
            "FAILED: is_perfect_square128(n)\n"
            "  n        = 0x{:016x}{:016x}\n"
            "  r        =                 0x{:016x}\n"
            "  expected = {}, actual   = {}",
            static_cast<uint64_t>(n >> 64), static_cast<uint64_t>(n), r,
            expected, actual128
        ) << std::endl;
        std::exit(1);
    }

    // 64-bit に収まる場合だけ is_perfect_square64 も検証
    if (n <= UINT64_MAX) {
        const uint64_t n64 = static_cast<uint64_t>(n);
        const bool actual64 = is_perfect_square64(n64);

        if (actual64 != expected) [[unlikely]] {
            const uint64_t r = isqrt128(n);
            std::cerr << std::format(
                "FAILED: is_perfect_square64(n)\n"
                "  n                        = 0x{:016x}\n"
                "  r                        = 0x{:016x}\n"
                "  expected = {}, actual   = {}",
                n64, r,
                expected, actual64
            ) << std::endl;
            std::exit(1);
        }
    }
}

[[gnu::always_inline]] inline void test_square(uint64_t r) {
    const uint128_t n = static_cast<uint128_t>(r) * r;
    test_one(n, true);
}


[[gnu::always_inline]] inline void test_square_neighborhood(uint64_t r) {
    constexpr uint128_t UINT128_MAX = std::numeric_limits<uint128_t>::max();
    const uint128_t sq = static_cast<uint128_t>(r) * r;

    test_one(sq, true);

    if (r) [[likely]] {
        const uint128_t n1 = sq - 1;
        test_one(n1, n1==0);
    } else {
        test_one(UINT128_MAX, false);
    }
    
    const uint128_t n2 = sq + 1;
    test_one(n2, n2==1);
}

void test_range(uint128_t lo, uint128_t hi) {
    if (lo > hi) [[unlikely]] { return; }

    constexpr uint128_t UINT128_MAX = std::numeric_limits<uint128_t>::max();
    if (lo == 0 && hi == UINT128_MAX) [[unlikely]] {
        std::cerr << "ERROR: test_range(0, UINT128_MAX) is not allowed." << std::endl;
        std::exit(1);
    }

    const unsigned int hw_threads = std::max(1u, std::thread::hardware_concurrency());
    const unsigned int target_threads = (hw_threads > 2) ? hw_threads - 2 : 1u;
    const uint128_t count = hi - lo + 1;
    const unsigned int threads = static_cast<unsigned int>( std::min<uint128_t>(target_threads, count) );

    const uint128_t base = count / threads;
    const uint128_t extra = count % threads;

    std::vector<std::jthread> workers;
    workers.reserve(threads);

    uint128_t current = lo;
    for (unsigned int i = 0; i < threads; ++i) {
        const uint128_t size = base + (i < extra ? 1 : 0);
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

void test_range_square_neighborhood(uint64_t lo, uint64_t hi) {
    if (lo > hi) [[unlikely]] { return; }
    lo = static_cast<uint128_t>(lo);
    hi = static_cast<uint128_t>(hi);

    const unsigned int hw_threads = std::max(1u, std::thread::hardware_concurrency());
    const unsigned int target_threads = (hw_threads > 2) ? hw_threads - 2 : 1u;
    const uint128_t count = hi - lo + 1;
    const unsigned int threads = static_cast<unsigned int>( std::min<uint128_t>(target_threads, count) );

    const uint128_t base = count / threads;
    const uint128_t extra = count % threads;

    std::vector<std::jthread> workers;
    workers.reserve(threads);

    uint128_t current = lo;
    for (unsigned int i = 0; i < threads; ++i) {
        const uint128_t size = base + (i < extra ? 1 : 0);
        const uint128_t begin = current;
        const uint128_t end = begin + size - 1;

        workers.emplace_back(
            [begin, end]() {
                for (uint128_t r = begin;; ++r) {
                    test_square_neighborhood(r);

                    if (r == end) [[unlikely]] {
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

    test_square_neighborhood(0);
    test_square_neighborhood(1ULL << 16);
    test_square_neighborhood((1ULL << 16) - 1);
    test_square_neighborhood(1ULL << 32);
    test_square_neighborhood((1ULL << 32) - 1);
    test_square_neighborhood(UINT64_MAX);



    std::cout << "[2] Exhaustive 64-bit Squares..." << std::endl;

    constexpr uint64_t MAX_R = 10'000'000;
    test_range_square_neighborhood(0ULL, MAX_R);



    std::mt19937_64 rng(1361);
    constexpr int num_tests = 100'000'000ULL;
    std::cout << "[3] Random 64-bit Stress Test (100'000'000 iterations)" << std::endl;

    for (int i = 0; i < num_tests; ++i) {
        const uint64_t r = rng() & static_cast<uint64_t>(UINT32_MAX);

        test_square_neighborhood(r);

        if (((i + 1) & 0x7FFFFF) == 0) {
            std::cout << std::format("  Square neighborhood test: {:.2f}% passed.", static_cast<double>(i + 1) / num_tests * 100.0) << std::endl;
        }
    }



    std::cout << "[4] Random 128-bit Stress Test (100'000'000 iterations)" << std::endl;

    for (int i = 0; i < num_tests; ++i) {
        const uint64_t r = rng();

        test_square_neighborhood(r);

        if (((i + 1) & 0x7FFFFF) == 0) {
            std::cout << std::format("  Square neighborhood test: {:.2f}% passed.", static_cast<double>(i + 1) / num_tests * 100.0) << std::endl;
        }
    }



    constexpr uint64_t num_squares = 200;
    constexpr uint64_t radius = 1000000;
    std::cout << std::format("[5] Random Square Neighborhood (num_squares = {}, radius = ±{})",
                            num_squares, radius) << std::endl;

    for (size_t i = 0; i < num_squares; ++i) {
        const uint64_t r = rng();
        const uint128_t sq = static_cast<uint128_t>(r) * r;

        const uint128_t radius128 = static_cast<uint128_t>(radius);
        const uint128_t start = (sq >= radius128) ? sq - radius128 : uint128_t(0);
        const uint128_t end = (U128MAX - sq >= radius128) ? sq + radius128 : U128MAX;

        // 範囲内の全整数を検証
        test_range(start, end);

        if ((i + 1) % 20 == 0 || i + 1 == num_squares) {
            std::cout << std::format("  Progress: {} / {} squares checked.",
                                    i + 1, num_squares) << std::endl;
        }
    }



    std::cout << "[6] All 2^32 Perfect Squares Off-By-One Test (x = 0 .. 2^32 - 1)" << std::endl;

    constexpr uint64_t TOTAL_X = 1ULL << 32;

    test_one(0ULL, true);
    test_one(1ULL, true);
    test_one(2ULL, false);
    test_one(UINT64_MAX, false);

    test_range_square_neighborhood(2, TOTAL_X);

    std::cout << "\n[PASS] ALL TESTS PASSED SUCCESSFULLY!" << std::endl;

    return 0;
}