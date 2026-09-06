#include <iostream>
#include <cstdint>
#include <cmath>
#include <random>
#include <format>
#include <chrono>
#include <string>
#include <fast_isqrt/fast_isqrt.hpp>

uint64_t get_current_time_ms() {
    return static_cast<uint64_t>(
        std::chrono::duration_cast<std::chrono::milliseconds>(
            std::chrono::system_clock::now().time_since_epoch()
        ).count()
    );
}

struct BranchStats {
    uint64_t total_calls = 0;
    uint64_t exact_hits   = 0; // 補正なし（一発的中）
    uint64_t undershoots  = 0; // x++ が走った (x < true_root)
    uint64_t overshoots   = 0; // x-- が走った (x > true_root)
};

// 判定付き isqrt64
inline uint64_t tracked_isqrt64(uint64_t n, BranchStats& stats) noexcept {
    stats.total_calls++;

    uint64_t x = static_cast<uint64_t>(std::sqrt(static_cast<double>(n)));

    bool undershot = false;
    bool overshot  = false;

    // UINT32_MAX ガード
    while ((x + 1) * (x + 1) <= n && x < UINT32_MAX) [[unlikely]] {
        undershot = true;
        x++;
    }
    while (x * x > n || x > UINT32_MAX) [[unlikely]] {
        overshot = true;
        x--;
    }

    if (undershot) {
        stats.undershoots++;
    } else if (overshot) {
        //std::cout << n << std::endl;
        stats.overshoots++;
    } else {
        stats.exact_hits++;
    }

    return x;
}

// 結果表示用
void print_stats(const std::string& title, const BranchStats& s) {
    std::cout << std::format("=== {} ===\n", title);
    std::cout << std::format("  Total Calls : {}\n", s.total_calls);
    std::cout << std::format("  Exact Hits  : {:12} ({:8.5f}%)\n", s.exact_hits, (double)s.exact_hits / s.total_calls * 100.0);
    std::cout << std::format("  Undershoots : {:12} ({:8.5f}%) [x++]\n", s.undershoots, (double)s.undershoots / s.total_calls * 100.0);
    std::cout << std::format("  Overshoots  : {:12} ({:8.5f}%) [x--]\n", s.overshoots, (double)s.overshoots / s.total_calls * 100.0);
    std::cout << "--------------------------------------------------\n\n";
}

// ------------------------------------------------------------------------------------------------------------------------------------------

using uint128_t = fast_isqrt::uint128_t;

// 128-bit用 統計構造体
struct Isqrt128Stats {
    uint64_t total_calls    = 0;
    uint64_t hi_zero_calls  = 0; // hi == 0 による isqrt64 フォールバック
    uint64_t overflow_guard = 0; // x < base ガード（UINT64_MAX 返却）
    uint64_t exact_hits     = 0; // final_remainder >> 127 == 0 (補正なし)
    uint64_t overshoots     = 0; // final_remainder >> 127 >= 1 (x - 1 補正)
};

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

// 判定計測機能付き isqrt128
inline uint128_t tracked_isqrt128(uint128_t n, Isqrt128Stats& stats) noexcept {
    stats.total_calls++;

    const uint64_t hi = static_cast<uint64_t>(n >> 64);
    if (hi == 0) [[unlikely]] {
        stats.hi_zero_calls++;
        return fast_isqrt::isqrt64(static_cast<uint64_t>(n));
    }

    const int a = __builtin_clzll(hi) >> 1;
    const uint128_t scaled_n = n << (a << 1);
    const uint64_t u = static_cast<uint64_t>(scaled_n >> 64);
    const auto [isqu, remainder] = fast_isqrt::isqrt64_with_remainder(u);

    const uint64_t quotient =
        ((remainder << 31) | (static_cast<uint64_t>(scaled_n) >> 33)) /
        isqu;
    const uint64_t base = isqu << (32 - a);
    const uint64_t x = base + (quotient >> a);

    if (x < base) [[unlikely]] {
        stats.overflow_guard++;
        return UINT64_MAX;
    }

    const uint128_t final_remainder =
        n - static_cast<uint128_t>(x) * x;
    
    const uint64_t is_overshot = static_cast<uint64_t>(final_remainder >> 127);

    if (is_overshot >= 1) {
        stats.overshoots++;
    } else {
        stats.exact_hits++;
    }

    return x - is_overshot;
}

// 結果表示用 (128-bit版)
void print_stats128(const std::string& title, const Isqrt128Stats& s) {
    const uint64_t valid_128_calls = s.total_calls - s.hi_zero_calls;

    std::cout << std::format("=== {} ===\n", title);
    std::cout << std::format("  Total Calls       : {}\n", s.total_calls);
    std::cout << std::format("  hi == 0 (Fallback): {:12} ({:8.5f}%)\n", 
                             s.hi_zero_calls, (double)s.hi_zero_calls / s.total_calls * 100.0);
    std::cout << std::format("  x < base Guard    : {:12} ({:8.5f}%)\n", 
                             s.overflow_guard, (double)s.overflow_guard / s.total_calls * 100.0);
    
    if (valid_128_calls > 0) {
        std::cout << std::format("  --- 128-bit Main Algorithm Breakdown (Calls: {}) ---\n", valid_128_calls);
        std::cout << std::format("  Exact Hits        : {:12} ({:8.5f}%)\n", 
                                 s.exact_hits, (double)s.exact_hits / valid_128_calls * 100.0);
        std::cout << std::format("  Overshoots (>=1)  : {:12} ({:8.5f}%) [final_rem >> 127]\n", 
                                 s.overshoots, (double)s.overshoots / valid_128_calls * 100.0);
    }
    std::cout << "--------------------------------------------------\n\n";
}

// ------------------------------------------------------------------------------------------------------------------------------------------

int main() {
    uint64_t now_seed = get_current_time_ms();
    std::cout << "seed: " << now_seed << std::endl;

    // // 1. 全域小領域テスト (0 ~ 1億)
    // {
    //     BranchStats stats;
    //     constexpr uint64_t LIMIT = 100'000'000;
    //     for (uint64_t n = 0; n < LIMIT; ++n) {
    //         tracked_isqrt64(n, stats);
    //     }
    //     print_stats("Exhaustive Test (n = 0 .. 100,000,000)", stats);
    // }

    // // 2. 境界値（平方数・その直前直後）集中テスト
    // {
    //     BranchStats stats;
    //     constexpr uint64_t R_MAX = 10'000'000;
    //     for (uint64_t r = 1; r <= R_MAX; ++r) {
    //         uint64_t sq = r * r;
    //         tracked_isqrt64(sq - 1, stats);
    //         tracked_isqrt64(sq, stats);
    //         if (sq < UINT64_MAX) tracked_isqrt64(sq + 1, stats);
    //     }
    //     print_stats("Squares Neighborhood Test (r = 1 .. 10,000,000)", stats);
    // }

    // // 3. 64-bit 全域ランダムテスト (1億サンプル)
    // {
    //     BranchStats stats;
    //     std::mt19937_64 rng(now_seed);
    //     constexpr size_t SAMPLES = 100'000'000;

    //     for (size_t i = 0; i < SAMPLES; ++i) {
    //         tracked_isqrt64(rng(), stats);
    //     }
    //     print_stats("64-bit Full Range Random Test (100M Samples)", stats);
    // }

    // // 4. 浮動小数点数精度限界領域 (2^52 〜 2^64-1) ランダムテスト
    // {
    //     BranchStats stats;
    //     std::mt19937_64 rng(now_seed);
    //     constexpr size_t SAMPLES = 100'000'000;
    //     // 2^52 以上に限定（仮数部 52bit を超えて精度落ちが発生しやすい領域）
    //     constexpr uint64_t MIN_VAL = 1ULL << 52; 

    //     for (size_t i = 0; i < SAMPLES; ++i) {
    //         uint64_t n = MIN_VAL + (rng() % (UINT64_MAX - MIN_VAL));
    //         tracked_isqrt64(n, stats);
    //     }
    //     print_stats("High-Bit Range Test (n >= 2^52, 100M Samples)", stats);
    // }

    std::mt19937_64 rng(now_seed);
    constexpr size_t SAMPLES = 100'000'000;

    // 1. 128-bit 全域均等ランダムテスト
    {
        Isqrt128Stats stats;
        for (size_t i = 0; i < SAMPLES; ++i) {
            uint128_t n = make_rand128(rng);
            tracked_isqrt128(n, stats);
        }
        print_stats128("128-bit Full Range Random Test (100M Samples)", stats);
    }

    // 2. hi > 0 限定（128-bit アルゴリズムパス確定領域）ランダムテスト
    {
        Isqrt128Stats stats;
        for (size_t i = 0; i < SAMPLES; ++i) {
            // 上位 64bit が必ず 0 以外になるように設定
            uint128_t hi = rng();
            if (hi == 0) hi = 1;
            uint128_t n = (hi << 64) | rng();
            tracked_isqrt128(n, stats);
        }
        print_stats128("128-bit High-Bit Strictly Active Test (100M Samples)", stats);
    }

    // 3. 128-bit 平方数・境界値集中テスト
    {
        Isqrt128Stats stats;
        constexpr uint64_t R_MAX = 100'000'000;
        // 2^32〜2^64 付近のルート値で境界値をテスト
        for (uint64_t r_hi = 1; r_hi <= 100; ++r_hi) {
            for (uint64_t r_lo = 0; r_lo < R_MAX / 100; ++r_lo) {
                uint128_t r = (static_cast<uint128_t>(r_hi) << 32) | r_lo;
                uint128_t sq = r * r;
                
                if (sq > 0) tracked_isqrt128(sq - 1, stats);
                tracked_isqrt128(sq, stats);
                tracked_isqrt128(sq + 1, stats);
            }
        }
        print_stats128("128-bit Squares Neighborhood Test", stats);
    }

    // 各bit長 (20bits ~ 128bits) ランダムテスト
    {
        std::cout << "Bit,    Total_Calls,    Fallback_64,Main_Calls,     Guard, exact_hit,Overshoots,  Overshoot_Pct\n";

        for (int bits = 20; bits <= 128; ++bits) {
            Isqrt128Stats stats;

            for (size_t i = 0; i < 1'000'000; ++i) {
                uint128_t n = make_rand128_with_exact_bits(rng, bits);
                tracked_isqrt128(n, stats);
            }

            const uint64_t main_calls = stats.total_calls - stats.hi_zero_calls;
            double overshoot_pct = 0.0;
            if (main_calls > 0) {
                overshoot_pct = (double)stats.overshoots / main_calls * 100.0;
            }

            // CSV形式で1行ずつ結果を出力
            std::cout << std::format("{:3d},{:15d},{:15d},{:10d},{:10d},{:10d},{:10d},    {:10.5f}%\n",
                                    bits,
                                    stats.total_calls,
                                    stats.hi_zero_calls,
                                    main_calls,
                                    stats.overflow_guard,
                                    stats.exact_hits,
                                    stats.overshoots,
                                    overshoot_pct);
        }
    }

    // [UINT128_MAX - 100'000'000, UINT128_MAX] テスト
    {
        std::cout << "    Total_Calls,    Fallback_64,Main_Calls,     Guard, exact_hit,Overshoots,  Overshoot_Pct\n";

        Isqrt128Stats stats;

        const uint128_t MAX128 = (~((uint128_t)0)) - (((uint128_t)1)<<64);
        const uint128_t RADIUS = 100'000'000;
        uint128_t n = MAX128;
        do {
            tracked_isqrt128(n, stats);
        } while (n-- != (MAX128-RADIUS));

        const uint64_t main_calls = stats.total_calls - stats.hi_zero_calls;
        double overshoot_pct = 0.0;
        if (main_calls > 0) {
            overshoot_pct = (double)stats.overshoots / main_calls * 100.0;
        }

        // CSV形式で1行ずつ結果を出力
        std::cout << std::format("{:15d},{:15d},{:10d},{:10d},{:10d},{:10d},    {:10.5f}%\n",
                                stats.total_calls,
                                stats.hi_zero_calls,
                                main_calls,
                                stats.overflow_guard,
                                stats.exact_hits,
                                stats.overshoots,
                                overshoot_pct);
        
    }

    return 0;
}