#ifndef FAST_ISQRT_HPP
#define FAST_ISQRT_HPP

#include <cstdint>
#include <cmath>

#ifndef __SIZEOF_INT128__
#error "fast_isqrt requires 128-bit integer support (__int128_t / __uint128_t) in Clang or GCC."
#endif

namespace fast_isqrt {

using uint128_t = unsigned __int128;

[[gnu::noinline, gnu::cold]] static uint64_t
correct_isqrt64(uint64_t x) noexcept {
    return x - 1;
}

[[nodiscard]] inline uint64_t isqrt64(uint64_t n) noexcept {
    const uint64_t x =
        static_cast<uint64_t>(std::sqrt(static_cast<double>(n)));
    const uint64_t remainder = n - x * x;

    // Unsigned underflow marks an overshoot in the top bit.
    if (remainder >> 63) [[unlikely]] {
        return correct_isqrt64(x);
    }

    return x;
}

struct alignas(16) IsqrtResult {
    uint64_t root;
    uint64_t sq;
};

[[gnu::noinline, gnu::cold]] static IsqrtResult
correct_isqrt64_with_sq(uint64_t x, uint64_t sq) noexcept {
    sq -= (x << 1) - 1;
    return IsqrtResult{x - 1, sq};
}

[[nodiscard]] inline IsqrtResult isqrt64_with_sq(uint64_t n) noexcept {
    const uint64_t x =
        static_cast<uint64_t>(std::sqrt(static_cast<double>(n)));
    const uint64_t sq = x * x;

    if ((n - sq) >> 63) [[unlikely]] {
        return correct_isqrt64_with_sq(x, sq);
    }

    return IsqrtResult{x, sq};
}

namespace detail {

struct alignas(16) IsqrtRemainder {
    uint64_t root;
    uint64_t remainder;
};

[[gnu::noinline, gnu::cold]] static IsqrtRemainder
correct_isqrt64_with_remainder(uint64_t x, uint64_t remainder) noexcept {
    remainder += (x << 1) - 1;
    return IsqrtRemainder{x - 1, remainder};
}

[[nodiscard]] static inline IsqrtRemainder
isqrt64_with_remainder(uint64_t n) noexcept {
    const uint64_t x =
        static_cast<uint64_t>(std::sqrt(static_cast<double>(n)));
    const uint64_t remainder = n - x * x;

    if (remainder >> 63) [[unlikely]] {
        return correct_isqrt64_with_remainder(x, remainder);
    }

    return IsqrtRemainder{x, remainder};
}

} // namespace detail

[[nodiscard]] inline uint128_t isqrt128(uint128_t n) noexcept {
    const uint64_t hi = static_cast<uint64_t>(n >> 64);
    if (hi == 0) [[unlikely]] {
        return isqrt64(static_cast<uint64_t>(n));
    }

    const int a = __builtin_clzll(hi) >> 1;
    const uint128_t scaled_n = n << (a << 1);
    const uint64_t u = static_cast<uint64_t>(scaled_n >> 64);
    auto [isqu, remainder] = detail::isqrt64_with_remainder(u);

    const uint64_t quotient =
        ((remainder << 31) | (static_cast<uint64_t>(scaled_n) >> 33)) /
        isqu;
    const uint64_t base = isqu << (32 - a);
    const uint64_t x = base + (quotient >> a);

    if (x < base) [[unlikely]] {
        return UINT64_MAX;
    }

    const uint128_t final_remainder =
        n - static_cast<uint128_t>(x) * x;
    return x - static_cast<uint64_t>(final_remainder >> 127);
}

// C++26: コンパイル時に Modulo M の平方余りビットマスクを自動生成
template <uint64_t Mod>
[[nodiscard]] constexpr uint64_t generate_sq_mod_mask() noexcept {
    static_assert(Mod <= 64, "Mod must be <= 64 for 64-bit mask");
    uint64_t mask = 0;
    for (uint64_t i = 0; i < Mod; ++i) {
        mask |= (1ULL << ((i * i) % Mod));
    }
    return mask;
}

// 64-bit 平方判定
[[nodiscard]] inline bool is_perfect_square64(uint64_t n) noexcept {
    // Mod 64 フィルター (11/64 のみ通過 => 82.8% を即座に reject)
    constexpr uint64_t sq_mod64_mask = generate_sq_mod_mask<64>();
    
    if ((sq_mod64_mask & (1ULL << (n & 63))) == 0) [[likely]] {
        return false;
    }

    // Mod 63 フィルター (n % 63 の余りチェック)
    // 63 剰余も下位 6bit 判定同様にルックアップテーブルで弾く場合
    constexpr uint64_t sq_mod63_mask = generate_sq_mod_mask<63>();
    if ((sq_mod63_mask & (1ULL << (n % 63))) == 0) [[likely]] {
        return false;
    }

    // フィルタを抜けた約 4.3% の候補のみ isqrt64_with_sq を実行
    auto [r, sq] = isqrt64_with_sq(n);
    return sq == n;
}

// 128-bit 平方判定
[[nodiscard]] inline bool is_perfect_square128(uint128_t n) noexcept {
    // 128-bit でも下位 64-bit の Mod 64 判定はそのまま成立する
    constexpr uint64_t sq_mod64_mask = generate_sq_mod_mask<64>();
    uint64_t n_lo = static_cast<uint64_t>(n);

    if ((sq_mod64_mask & (1ULL << (n_lo & 63))) == 0) [[likely]] {
        return false;
    }

    constexpr uint64_t sq_mod63_mask = generate_sq_mod_mask<63>();
    if ((sq_mod63_mask & (1ULL << (n % 63))) == 0) [[likely]] {
        return false;
    }

    // 64-bit 内に収まる場合は 64-bit 判定へ移譲
    if (n <= UINT64_MAX) {
        auto [r, sq] = isqrt64_with_sq(n_lo);
        return sq == n_lo;
    }

    // 128-bit での最終検証
    uint128_t r = isqrt128(n);
    return (r * r) == n;
}

// C++26: コンパイル時に Modulo M の平方余りビットマスクを自動生成
template <uint64_t Mod>
[[nodiscard]] constexpr uint64_t generate_sq_mod_mask() noexcept {
    static_assert(Mod <= 64, "Mod must be <= 64 for 64-bit mask");
    uint64_t mask = 0;
    for (uint64_t i = 0; i < Mod; ++i) {
        mask |= (1ULL << ((i * i) % Mod));
    }
    return mask;
}

// 64-bit 平方判定
[[nodiscard]] inline bool is_perfect_square64(uint64_t n) noexcept {
    // Mod 64 フィルター (11/64 のみ通過 => 82.8% を即座に reject)
    constexpr uint64_t sq_mod64_mask = generate_sq_mod_mask<64>();
    
    if ((sq_mod64_mask & (1ULL << (n & 63))) == 0) [[likely]] {
        return false;
    }

    // Mod 63 フィルター (n % 63 の余りチェック)
    // 63 剰余も下位 6bit 判定同様にルックアップテーブルで弾く場合
    constexpr uint64_t sq_mod63_mask = generate_sq_mod_mask<63>();
    if ((sq_mod63_mask & (1ULL << (n % 63))) == 0) [[likely]] {
        return false;
    }

    // フィルタを抜けた約 4.3% の候補のみ isqrt64_with_sq を実行
    auto [r, sq] = isqrt64_with_sq(n);
    return sq == n;
}

// 128-bit 平方判定
[[nodiscard]] inline bool is_perfect_square128(uint128_t n) noexcept {
    // 128-bit でも下位 64-bit の Mod 64 判定はそのまま成立する
    constexpr uint64_t sq_mod64_mask = generate_sq_mod_mask<64>();
    uint64_t n_lo = static_cast<uint64_t>(n);

    if ((sq_mod64_mask & (1ULL << (n_lo & 63))) == 0) [[likely]] {
        return false;
    }

    constexpr uint64_t sq_mod63_mask = generate_sq_mod_mask<63>();
    if ((sq_mod63_mask & (1ULL << (n % 63))) == 0) [[likely]] {
        return false;
    }

    // 64-bit 内に収まる場合は 64-bit 判定へ移譲
    if (n <= UINT64_MAX) {
        auto [r, sq] = isqrt64_with_sq(n_lo);
        return sq == n_lo;
    }

    // 128-bit での最終検証
    uint128_t r = isqrt128(n);
    return (r * r) == n;
}

} // namespace fast_isqrt

#endif // FAST_ISQRT_HPP
