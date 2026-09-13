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
#include <fast_isqrt/fast_isqrt.hpp>

using namespace fast_isqrt;
// --------------------------------------------------
// 検証用ヘルパー関数
// --------------------------------------------------

// nsq(n) == x が厳密に floor(sqrt(n)) であるかの数学的検証
// 条件: x^2 <= n < (x + 1)^2
bool verify_isqrt(uint128_t n, uint64_t x) {
    if (x > UINT64_MAX) return false;

    uint128_t x2 = static_cast<uint128_t>(x) * x;
    if (x2 > n) return false;
    
    // x + 1 が 2^64 を超える場合のオーバーフローチェック
    if (x == UINT64_MAX) {
        return true;
        // uint128_t の max に対して (x+1)^2 > max128 は成り立つ
    }
    
    uint128_t next_x2 = (static_cast<uint128_t>(x) + 1) * (static_cast<uint128_t>(x) + 1);
    return n < next_x2;
}

// IsqrtSquare128 の検証
bool verify_isqrt_with_square(uint128_t n, IsqrtSquare128 res) {
    if (!verify_isqrt(n, res.root)) return false;
    uint128_t expected_sq = static_cast<uint128_t>(res.root) * res.root;
    return (res.sq == expected_sq) && (res.sq <= n);
}

// IsqrtRemainder128 の検証
bool verify_isqrt_with_remainder(uint128_t n, IsqrtRemainder128 res) {
    if (!verify_isqrt(n, res.root)) return false;
    uint128_t x_sq = static_cast<uint128_t>(res.root) * res.root;
    return (res.remainder == (n - x_sq)) && ((x_sq + res.remainder) == n);
}

// --------------------------------------------------
// 統合テストヘルパー (3つの関数全てをテスト)
// --------------------------------------------------
bool test_isqrt_all(uint128_t n, uint64_t& out_root) {
    out_root = isqrt128(n);
    if (!verify_isqrt(n, out_root)) return false;

    auto sq_res = isqrt128_with_square(n);
    if (sq_res.root != out_root) return false;
    if (!verify_isqrt_with_square(n, sq_res)) return false;

    auto rem_res = isqrt128_with_remainder(n);
    if (rem_res.root != out_root) return false;
    if (!verify_isqrt_with_remainder(n, rem_res)) return false;

    return true;
}

// out_root を受け取らないオーバーロード
bool test_isqrt_all(uint128_t n) {
    uint64_t dummy;
    return test_isqrt_all(n, dummy);
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

int main() {
    std::cout << "[1] Edge Cases Verification..." << std::endl;
    std::vector<uint128_t> edge_cases = {
        0, 1, 2, 3, 4, 8, 9, 15, 16, 24, 25,
        0xFFFFFFFFULL, 0x100000000ULL,
        0xFFFFFFFFFFFFFFFFULL, static_cast<uint128_t>(0xFFFFFFFFFFFFFFFFULL) + 1
    };

    for (auto n : edge_cases) {
        uint64_t res;
        if (!test_isqrt_all(n, res)) {
            std::cerr << "FAILED at edge case n = " << static_cast<uint64_t>(n) << std::endl;
            return 1;
        }
    }

    std::cout << "[2] Perfect Squares & Off-by-One Boundaries..." << std::endl;
    for (int bit = 1; bit <= 64; ++bit) {
        uint128_t x = (1ULL << (bit - 1));
        if (bit == 64) x = 0xFFFFFFFFFFFFFFFFULL;

        uint128_t sq = x * x;

        // sq - 1
        if (sq > 0) {
            if (!test_isqrt_all(sq - 1)) {
                std::cerr << "FAILED at (x^2 - 1) bit=" << bit << std::endl;
                return 1;
            }
        }
        // sq
        if (!test_isqrt_all(sq)) {
            std::cerr << "FAILED at (x^2) bit=" << bit << std::endl;
            return 1;
        }
        // sq + 1
        if (sq < ~(uint128_t)0) {
            if (!test_isqrt_all(sq + 1)) {
                std::cerr << "FAILED at (x^2 + 1) bit=" << bit << std::endl;
                return 1;
            }
        }
    }

    std::cout << "[3] Bit Length Transition Boundaries (lz = 0..127)..." << std::endl;
    for (int k = 1; k <= 127; ++k) {
        uint128_t base = (uint128_t(1) << k);

        if (!test_isqrt_all(base - 2)) {
            std::cerr << "FAILED at 2^" << k << " - 2" << std::endl;
            return 1;
        }
        if (!test_isqrt_all(base - 1)) {
            std::cerr << "FAILED at 2^" << k << " - 1" << std::endl;
            return 1;
        }
        if (!test_isqrt_all(base)) {
            std::cerr << "FAILED at 2^" << k << std::endl;
            return 1;
        }
        if (!test_isqrt_all(base + 1)) {
            std::cerr << "FAILED at 2^" << k << " + 1" << std::endl;
            return 1;
        }
        if (!test_isqrt_all(base + 2)) {
            std::cerr << "FAILED at 2^" << k << " + 2" << std::endl;
            return 1;
        }
    }

    // 128bit 最大値境界
    uint128_t max128 = ~(uint128_t)0;
    if (!test_isqrt_all(max128)) {
        std::cerr << "FAILED at uint128_t MAX" << std::endl;
        return 1;
    }
    if (!test_isqrt_all(max128-1)) {
        std::cerr << "FAILED at uint128_t MAX - 1" << std::endl;
        return 1;
    }

    std::cout << "[4] Massive Stress Test across All Bit Lengths (128M Random Samples)..." << std::endl;
    std::mt19937_64 rng(42);
    const int SAMPLES_PER_BIT = 1000000;

    for (int bit = 1; bit <= 128; ++bit) {
        for (int i = 0; i < SAMPLES_PER_BIT; ++i) {
            uint128_t n = make_rand128_with_exact_bits(rng, i);

            uint64_t x;
            if (!test_isqrt_all(n, x)) {
                std::cerr << "FAILED Random Test at bit " << bit << " for n = 0x" 
                          << std::hex << static_cast<uint64_t>(n >> 64) 
                          << std::setfill('0') << std::setw(16)
                          << static_cast<uint64_t>(n) << std::dec << std::endl;
                return 1;
            }
        }
        if (bit % 16 == 0) {
            std::cout << "  Bit lengths 1 to " << bit << " PASSED." << std::endl;
        }
    }

    std::cout << "[5] Testing Random Perfect Squares Neighbor Neighborhood (±10^6)..." << std::endl;
    {
        std::mt19937_64 rng_sq(1339);
        const int NUM_SQUARES = 200;
        const int64_t RADIUS = 1000000;
        const uint128_t MAX128 = ~(uint128_t)0;

        for (int i = 0; i < NUM_SQUARES; ++i) {
            uint64_t base_x = rng_sq();
            uint128_t sq = static_cast<uint128_t>(base_x) * base_x;

            uint128_t start_n = (sq > static_cast<uint128_t>(RADIUS)) ? (sq - RADIUS) : 0;
            uint128_t end_n = (MAX128 - sq > static_cast<uint128_t>(RADIUS)) ? (sq + RADIUS) : MAX128;

            uint128_t n = start_n;
            do {
                uint64_t res;
                if (!test_isqrt_all(n, res)) {
                    std::cerr << "FAILED at Square Neighborhood Test!" << std::endl;
                    std::cerr << "  base_x = " << base_x << std::endl;
                    std::cerr << "  n      = 0x" << std::hex 
                              << static_cast<uint64_t>(n >> 64) 
                              << std::setfill('0') << std::setw(16)
                              << static_cast<uint64_t>(n) << std::dec << std::endl;
                    return 1;
                }
            } while (n++ != end_n);

            if ((i + 1) % 20 == 0) {
                std::cout << "  Square neighborhood test: " << (i + 1) << " / " << NUM_SQUARES << " passed." << std::endl;
            }
        }
    }

    std::cout << "[6] Testing [UINT128_MAX - 100'000'000, UINT128_MAX]" << std::endl;
    {
        const int64_t RADIUS = 100'000'000;
        const uint128_t MAX128 = ~(uint128_t)0;

        uint128_t n = MAX128-RADIUS;
        do {
            uint64_t res;
            if (!test_isqrt_all(n, res)) {
                std::cerr << "FAILED at UINT128_MAX neighbor Test!" << std::endl;
                std::cerr << "  n      = 0x" << std::hex
                            << static_cast<uint64_t>(n >> 64) 
                            << std::setfill('0') << std::setw(16)
                            << static_cast<uint64_t>(n) << std::dec << std::endl;
                return 1;
            }
        } while (n++ != MAX128);
    }

    std::cout << "[7] Testing k^2 neighbors (k = UINT64_MAX - 0..99, R = 1,000,000)" << std::endl;
    {
        const int64_t RADIUS = 1'000'000;
        const uint64_t K_COUNT = 100;

        for (uint64_t i = 0; i < K_COUNT; ++i) {
            uint64_t k = UINT64_MAX - i;
            uint128_t k128 = k;
            uint128_t k_sq = k128 * k128;

            uint128_t start_n = k_sq - RADIUS;
            uint128_t end_n   = k_sq + RADIUS;

            for (uint128_t n = start_n; n <= end_n; ++n) {
                uint64_t res;
                if (!test_isqrt_all(n, res)) {
                    std::cerr << "FAILED at k^2 neighbor Test!" << std::endl;
                    std::cerr << "  k        = 0x" << std::hex << k << std::dec << std::endl;
                    std::cerr << "  n        = 0x" << std::hex
                            << static_cast<uint64_t>(n >> 64)
                            << std::setfill('0') << std::setw(16)
                            << static_cast<uint64_t>(n) << std::dec << std::endl;
                    std::cerr << "  expected = 0x" << std::hex
                            << static_cast<uint64_t>(k128 >> 64)
                            << std::setfill('0') << std::setw(16)
                            << static_cast<uint64_t>(k128) << std::dec << std::endl;
                    std::cerr << "  got      = 0x" << std::hex
                            << res << std::dec << std::endl;
                    return 1;
                }
            }
        }
    }

    std::cout << "\nALL CORRECTNESS TESTS PASSED PERFECTLY!" << std::endl;

    return 0;
}