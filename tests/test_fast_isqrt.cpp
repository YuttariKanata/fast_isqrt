#ifdef NDEBUG
#undef NDEBUG
#endif

#include <cstdint>
#include <cmath>
#include <iostream>
#include <vector>
#include <random>
#include <chrono>
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

// 128-bit 乱数生成器
inline uint128_t make_rand128(std::mt19937_64& rng) {
    uint128_t hi = rng();
    uint128_t lo = rng();
    return (hi << 64) | lo;
}

// 指定した exact_bits (1〜128) の範囲内の乱数を生成
// 例: bits=20 の場合、2^19 <= n < 2^20 (必ず20bit幅)
inline uint128_t make_rand128_with_exact_bits(std::mt19937_64& rng, int bits) {
    if (bits <= 0) return 0;
    if (bits > 128) bits = 128;

    uint128_t val = make_rand128(rng);
    
    // bits 桁未満のマスクを作成して切り捨て
    if (bits < 128) {
        uint128_t mask = (static_cast<uint128_t>(1) << bits) - 1;
        val &= mask;
    }

    // 最上位ビット(MSB)を1にして確実に `bits` 長の数値にする
    val |= (static_cast<uint128_t>(1) << (bits - 1));
    
    return val;
}

int main() {
    std::cout << "[1] Edge Cases Verification..." << std::endl;
    // 1. 小さな値 & 代表的な境界値
    std::vector<uint128_t> edge_cases = {
        0, 1, 2, 3, 4, 8, 9, 15, 16, 24, 25,
        0xFFFFFFFFULL, 0x100000000ULL,
        0xFFFFFFFFFFFFFFFFULL, static_cast<uint128_t>(0xFFFFFFFFFFFFFFFFULL) + 1
    };

    for (auto n : edge_cases) {
        uint64_t res = isqrt128(n);
        if (!verify_isqrt(n, res)) {
            std::cerr << "FAILED at edge case n = " << static_cast<uint64_t>(n) << std::endl;
            return 1;
        }
    }

    std::cout << "[2] Perfect Squares & Off-by-One Boundaries..." << std::endl;
    // 2. 完全平方数とその前後 (x^2 - 1, x^2, x^2 + 1)
    // 2^1 〜 2^64 までのベース値でテスト
    for (int bit = 1; bit <= 64; ++bit) {
        uint128_t x = (1ULL << (bit - 1));
        if (bit == 64) x = 0xFFFFFFFFFFFFFFFFULL;

        uint128_t sq = x * x;

        // sq - 1
        if (sq > 0) {
            if (!verify_isqrt(sq - 1, isqrt128(sq - 1))) {
                std::cerr << "FAILED at (x^2 - 1) bit=" << bit << std::endl;
                return 1;
            }
        }
        // sq
        if (!verify_isqrt(sq, isqrt128(sq))) {
            std::cerr << "FAILED at (x^2) bit=" << bit << std::endl;
            return 1;
        }
        // sq + 1
        if (sq < ~(uint128_t)0) {
            if (!verify_isqrt(sq + 1, isqrt128(sq + 1))) {
                std::cerr << "FAILED at (x^2 + 1) bit=" << bit << std::endl;
                return 1;
            }
        }
    }

    std::cout << "[3] Bit Length Transition Boundaries (lz = 0..127)..." << std::endl;
    // 3. ビット長切り替わりの境界 (2^k - 1, 2^k, 2^k + 1)
    for (int k = 1; k <= 127; ++k) {
        uint128_t base = (uint128_t(1) << k);

        if (!verify_isqrt(base - 2, isqrt128(base - 2))) {
            std::cerr << "FAILED at 2^" << k << " - 2" << std::endl;
            return 1;
        }
        if (!verify_isqrt(base - 1, isqrt128(base - 1))) {
            std::cerr << "FAILED at 2^" << k << " - 1" << std::endl;
            return 1;
        }
        if (!verify_isqrt(base, isqrt128(base))) {
            std::cerr << "FAILED at 2^" << k << std::endl;
            return 1;
        }
        if (!verify_isqrt(base + 1, isqrt128(base + 1))) {
            std::cerr << "FAILED at 2^" << k << " + 1" << std::endl;
            return 1;
        }
        if (!verify_isqrt(base + 2, isqrt128(base + 2))) {
            std::cerr << "FAILED at 2^" << k << " + 2" << std::endl;
            return 1;
        }
    }

    // 128bit 最大値境界
    uint128_t max128 = ~(uint128_t)0;
    if (!verify_isqrt(max128, isqrt128(max128))) {
        std::cerr << "FAILED at uint128_t MAX" << std::endl;
        return 1;
    }
    if (!verify_isqrt(max128-1, isqrt128(max128-1))) {
        std::cerr << "FAILED at uint128_t MAX - 1" << std::endl;
        return 1;
    }

    std::cout << "[4] Massive Stress Test across All Bit Lengths (128M Random Samples)..." << std::endl;
    // 4. 全ビット領域のランダムストレス環境テスト (1 bit 〜 128 bit を均等走査)
    std::mt19937_64 rng(42);
    const int SAMPLES_PER_BIT = 1000000; // 1ビット長あたり100万個 (計1億2800万個)

    for (int bit = 1; bit <= 128; ++bit) {
        for (int i = 0; i < SAMPLES_PER_BIT; ++i) {
            uint128_t n = make_rand128_with_exact_bits(rng, i);

            uint64_t x = isqrt128(n);
            if (!verify_isqrt(n, x)) {
                std::cerr << "FAILED Random Test at bit " << bit << " for n = 0x" 
                          << std::hex << static_cast<uint64_t>(n >> 64) 
                          << static_cast<uint64_t>(n) << std::dec << std::endl;
                return 1;
            }
        }
        if (bit % 16 == 0) {
            std::cout << "  Bit lengths 1 to " << bit << " PASSED." << std::endl;
        }
    }

    std::cout << "[5] Testing Random Perfect Squares Neighbor Neighborhood (±10^6)..." << std::endl;
    // 5. ランダムな 64bit 整数 x を決め、x^2 の ±10^6 近傍と [0, uint128_max] の共通部分を全検証
    {
        std::mt19937_64 rng_sq(1337);
        const int NUM_SQUARES = 100;               // テストする完全平方数の個数
        const int64_t RADIUS = 1000000;             // 近傍半径 (±10^6)
        const uint128_t MAX128 = ~(uint128_t)0;

        for (int i = 0; i < NUM_SQUARES; ++i) {
            uint64_t base_x = rng_sq();
            uint128_t sq = static_cast<uint128_t>(base_x) * base_x;

            // [0, MAX128] と [sq - RADIUS, sq + RADIUS] の交差範囲 (共通部分) を計算
            uint128_t start_n = (sq > static_cast<uint128_t>(RADIUS)) ? (sq - RADIUS) : 0;
            uint128_t end_n = (MAX128 - sq > static_cast<uint128_t>(RADIUS)) ? (sq + RADIUS) : MAX128;

            // 範囲内の全整数 n をテスト
            uint128_t n = start_n;
            do {
                uint64_t res = isqrt128(n);
                if (!verify_isqrt(n, res)) {
                    std::cerr << "FAILED at Square Neighborhood Test!" << std::endl;
                    std::cerr << "  base_x = " << base_x << std::endl;
                    std::cerr << "  n      = 0x" << std::hex 
                              << static_cast<uint64_t>(n >> 64) 
                              << static_cast<uint64_t>(n) << std::dec << std::endl;
                    return 1;
                }
            } while (n++ != end_n);

            if ((i + 1) % 100 == 0) {
                std::cout << "  Square neighborhood test: " << (i + 1) << " / " << NUM_SQUARES << " passed." << std::endl;
            }
        }
    }

    std::cout << "[6] Testing [UINT128_MAX - 100'000'000, UINT128_MAX]" << std::endl;
    // 6. [uint128_max - 100'000'000 , uint128_max] を全検証
    {
        std::mt19937_64 rng_sq(1337);
        const int64_t RADIUS = 100'000'000;
        const uint128_t MAX128 = ~(uint128_t)0;

        uint128_t n = MAX128-RADIUS;
        do {
            uint64_t res = isqrt128(n);
            if (!verify_isqrt(n, res)) {
                std::cerr << "FAILED at UINT128_MAX neighbor Test!" << std::endl;
                std::cerr << "  n      = 0x" << std::hex
                            << static_cast<uint64_t>(n >> 64) 
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
                uint64_t res = isqrt128(n);
                if (!verify_isqrt(n, res)) {
                    std::cerr << "FAILED at k^2 neighbor Test!" << std::endl;
                    std::cerr << "  k        = 0x" << std::hex << k << std::dec << std::endl;
                    std::cerr << "  n        = 0x" << std::hex
                            << static_cast<uint64_t>(n >> 64)
                            << static_cast<uint64_t>(n) << std::dec << std::endl;
                    std::cerr << "  expected = 0x" << std::hex
                            << static_cast<uint64_t>(k128 >> 64)
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