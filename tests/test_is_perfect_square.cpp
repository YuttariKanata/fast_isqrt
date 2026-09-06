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
#include <fast_isqrt/fast_isqrt.hpp>

using namespace fast_isqrt;

uint64_t get_current_time_ms() {
    return static_cast<uint64_t>(
        std::chrono::duration_cast<std::chrono::milliseconds>(
            std::chrono::system_clock::now().time_since_epoch()
        ).count()
    );
}

// 128-bit 乱数生成器
class RandomUInt128 {
    std::mt19937_64 rng;
public:
    explicit RandomUInt128(uint64_t seed) : rng(seed) {}

    fast_isqrt::uint128_t operator()() {
        fast_isqrt::uint128_t hi = rng();
        fast_isqrt::uint128_t lo = rng();
        return (hi << 64) | lo;
    }

    uint64_t next64() {
        return rng();
    }
};

void print_success(const std::string& name) {
    std::cout << std::format("[PASS] {}", name) << std::endl;
}

void print_fail(const std::string& name, const std::string& msg) {
    std::cerr << std::format("[FAIL] {}: {}", name, msg) << std::endl;
    std::exit(1);
}

// -----------------------------------------------------------------------------
// Test Suites
// -----------------------------------------------------------------------------

void test_corner_cases() {
    // 0, 1, 2, 3, 4, 5
    assert(is_perfect_square64(0) == true);
    assert(is_perfect_square64(1) == true);
    assert(is_perfect_square64(2) == false);
    assert(is_perfect_square64(3) == false);
    assert(is_perfect_square64(4) == true);
    assert(is_perfect_square64(5) == false);
    
    assert(is_perfect_square128(static_cast<uint128_t>(0)) == true);
    assert(is_perfect_square128(static_cast<uint128_t>(1)) == true);
    assert(is_perfect_square128(static_cast<uint128_t>(2)) == false);
    assert(is_perfect_square128(static_cast<uint128_t>(3)) == false);
    assert(is_perfect_square128(static_cast<uint128_t>(4)) == true);
    assert(is_perfect_square128(static_cast<uint128_t>(5)) == false);

    // UINT32_MAX 境界
    uint64_t r32 = UINT32_MAX; // 2^32 - 1
    uint64_t sq32 = r32 * r32;
    assert(is_perfect_square64(sq32) == true);
    assert(is_perfect_square64(sq32 - 1) == false);
    assert(is_perfect_square64(sq32 + 1) == false);

    // 64-bit 最大の平方数 (2^32 - 1)^2
    assert(is_perfect_square64(0xFFFFFFFE00000001ULL) == true);
    assert(is_perfect_square64(0xFFFFFFFE00000000ULL) == false);
    assert(is_perfect_square64(0xFFFFFFFDFFFFFFFFULL) == false);

    // 128-bit 境界 (2^64 - 1)^2
    uint128_t r64 = UINT64_MAX;
    uint128_t sq64 = r64 * r64;
    assert(is_perfect_square128(sq64) == true);
    assert(is_perfect_square128(sq64 - 1) == false);
    assert(is_perfect_square128(sq64 + 1) == false);

    print_success("Corner Cases & Boundaries");
}

void test_perfect_squares_exhaustive_64() {
    // 0 から 10,000,000 までのすべての r^2 が 100% true になるか検証
    constexpr uint64_t MAX_R = 10'000'000;
    for (uint64_t r = 0; r <= MAX_R; ++r) {
        uint64_t sq = r * r;
        if (!is_perfect_square64(sq)) {
            print_fail("Exhaustive 64-bit", std::format("Failed for r = {}, sq = {}", r, sq));
        }
    }

    // r^2 - 1, r^2 + 1 が確実に false になるか検証 (r >= 2)
    for (uint64_t r = 2; r <= MAX_R; ++r) {
        uint64_t sq = r * r;
        if (is_perfect_square64(sq - 1)) {
            print_fail("Exhaustive 64-bit (sq - 1)", std::format("False positive for sq - 1 where r = {}", r));
        }
        if (is_perfect_square64(sq + 1)) {
            print_fail("Exhaustive 64-bit (sq + 1)", std::format("False positive for sq + 1 where r = {}", r));
        }
    }

    print_success("Exhaustive 64-bit Squares (r = 0 .. 10,000,000)");
}

void test_random_64bit(uint64_t seed, size_t num_tests) {
    RandomUInt128 rng(seed);

    for (size_t i = 0; i < num_tests; ++i) {
        // 1. 真の平方数テスト
        uint64_t r = rng.next64() & UINT32_MAX; // 64-bit に収まる sqrt
        uint64_t sq = r * r;
        if (!is_perfect_square64(sq)) {
            print_fail("Random 64-bit True Square", std::format("Failed for r = {}", r));
        }

        // 2. 厳密な隣接非平方数テスト
        if (r > 1) {
            if (is_perfect_square64(sq - 1)) {
                print_fail("Random 64-bit Off-by-one (-1)", std::format("False positive for r = {}", r));
            }
            if (sq < UINT64_MAX && is_perfect_square64(sq + 1)) {
                print_fail("Random 64-bit Off-by-one (+1)", std::format("False positive for r = {}", r));
            }
        }
    }

    print_success(std::format("Random 64-bit Stress Test ({} iterations)", num_tests));
}

void test_random_128bit(uint64_t seed, size_t num_tests) {
    RandomUInt128 rng(seed);

    for (size_t i = 0; i < num_tests; ++i) {
        // 1. 真の平方数テスト (128-bit)
        uint128_t r = static_cast<uint128_t>(rng.next64()); // 64bit ルート
        uint128_t sq = r * r;

        if (!is_perfect_square128(sq)) {
            print_fail("Random 128-bit True Square", std::format("False positive for r = {} sq = {}", r, sq));
        }

        // 2. 隣接非平方数テスト
        if (r > 1) {
            if (is_perfect_square128(sq - 1)) {
                print_fail("Random 128-bit Off-by-one (-1)", std::format("False positive on r = {}, {}-1", r, sq));
            }
            if (is_perfect_square128(sq + 1)) {
                print_fail("Random 128-bit Off-by-one (+1)", std::format("False positive on r = {}, {}+1", r, sq));
            }
        }
    }

    print_success(std::format("Random 128-bit Stress Test ({} iterations)", num_tests));
}

// 128-bit 表示用ヘルパー
std::string to_hex_128(fast_isqrt::uint128_t n) {
    uint64_t hi = static_cast<uint64_t>(n >> 64);
    uint64_t lo = static_cast<uint64_t>(n);
    if (hi == 0) {
        return std::format("0x{:X}", lo);
    }
    return std::format("0x{:X}{:016X}", hi, lo);
}

void test_random_perfect_square_neighbor(uint64_t seed, int num_squares, int64_t radius) {
    using namespace fast_isqrt;

    std::cout << std::format("[Testing] Perfect Square Neighbor Test (num_squares = {}, radius = ±{})", num_squares, radius) << std::endl;

    std::mt19937_64 rng_sq(seed);
    constexpr uint128_t MAX128 = ~static_cast<uint128_t>(0);

    for (int i = 0; i < num_squares; ++i) {
        // ランダムな 64-bit 根 base_x を生成
        uint64_t base_x = rng_sq();
        uint128_t sq = static_cast<uint128_t>(base_x) * base_x;

        // [0, MAX128] と [sq - RADIUS, sq + RADIUS] の交差範囲 (共通部分) を計算
        uint128_t start_n = (sq > static_cast<uint128_t>(radius)) ? (sq - radius) : 0;
        uint128_t end_n = (MAX128 - sq > static_cast<uint128_t>(radius)) ? (sq + radius) : MAX128;

        // 範囲内の全整数 n を検証
        for (uint128_t n = start_n; n <= end_n; ++n) {
            uint128_t r = isqrt128(n);
            bool expected = (r * r == n);
            
            // 64-bit / 128-bit それぞれの関数で判定
            bool actual64 = (n <= UINT64_MAX) ? is_perfect_square64(static_cast<uint64_t>(n)) : expected;
            bool actual128 = is_perfect_square128(n);

            if (actual64 != expected) {
                std::cerr << std::format("\n[FAIL] 64-bit Neighbor Test Failed!") << std::endl;
                std::cerr << std::format("  base_x   = {}", base_x) << std::endl;
                std::cerr << std::format("  sq       = {}", to_hex_128(sq)) << std::endl;
                std::cerr << std::format("  target_n = {}", to_hex_128(n)) << std::endl;
                std::cerr << std::format("  expected = {}, actual = {}", expected, actual64) << std::endl;
                std::exit(1);
            }

            if (actual128 != expected) {
                std::cerr << std::format("\n[FAIL] 128-bit Neighbor Test Failed!") << std::endl;
                std::cerr << std::format("  base_x   = {}", base_x) << std::endl;
                std::cerr << std::format("  sq       = {}", to_hex_128(sq)) << std::endl;
                std::cerr << std::format("  target_n = {}", to_hex_128(n)) << std::endl;
                std::cerr << std::format("  expected = {}, actual = {}", expected, actual128) << std::endl;
                std::exit(1);
            }
        }

        if ((i + 1) % 10 == 0 || i + 1 == num_squares) {
            std::cout << std::format("  Progress: {} / {} squares checked.", i + 1, num_squares) << std::endl;
        }
    }

    std::cout << "[PASS] Perfect Square Neighbor Test Passed Successfully!\n" << std::endl;
}

int main() {

    uint64_t now_seed = get_current_time_ms();
    std::cout << "==================================================" << std::endl;
    std::cout << " Running Strict Correctness Tests for is_perfect_square" << std::endl;
    std::cout << "==================================================\n" << std::endl;
    std::cout << "seed: " << now_seed << std::endl;

    test_corner_cases();
    test_perfect_squares_exhaustive_64();
    test_random_64bit(now_seed, 10'000'000);
    test_random_128bit(now_seed, 5'000'000);
    test_random_perfect_square_neighbor(now_seed, 100, 1000000);

    std::cout << "\n[✓] ALL TESTS PASSED SUCCESSFULLY!" << std::endl;
    return 0;
}