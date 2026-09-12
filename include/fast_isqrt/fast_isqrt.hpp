#ifndef FAST_ISQRT_HPP
#define FAST_ISQRT_HPP

#include <cstdint>

#ifndef __SIZEOF_INT128__
#error "fast_isqrt requires 128-bit integer support (__int128_t / __uint128_t) in Clang or GCC."
#endif

namespace fast_isqrt {

using uint128_t = unsigned __int128;

[[nodiscard]] static inline double sqrt_u64(uint64_t n) noexcept {
    double x = static_cast<double>(n);
    #if defined(__AVX__) && (defined(__x86_64__) || defined(__amd64__))
        __asm__("vsqrtsd %0, %0, %0" : "+x"(x));
    #elif defined(__SSE2__) && (defined(__x86_64__) || defined(__amd64__))
        __asm__("sqrtsd %0, %0" : "+x"(x));
    #else
        x = __builtin_sqrt(x);
    #endif
    return x;
}

[[gnu::noinline, gnu::cold]] static uint64_t
correct_isqrt64(uint64_t x) noexcept {
    return x - 1;
}

[[nodiscard]] inline uint64_t isqrt64(uint64_t n) noexcept {
    const uint64_t x =
        static_cast<uint64_t>(sqrt_u64(n));
    const uint64_t remainder = n - x * x;

    // Unsigned underflow marks an overshoot in the top bit.
    if (remainder >> 63) [[unlikely]] {
        return correct_isqrt64(x);
    }

    return x;
}

struct alignas(16) IsqrtSquare64 {
    uint64_t root;
    uint64_t sq;
};

[[gnu::noinline, gnu::cold]] static IsqrtSquare64
correct_isqrt64_with_square(uint64_t x, uint64_t sq) noexcept {
    sq -= (x << 1) - 1;
    return IsqrtSquare64{x - 1, sq};
}

[[nodiscard]] inline IsqrtSquare64 isqrt64_with_square(uint64_t n) noexcept {
    const uint64_t x =
        static_cast<uint64_t>(sqrt_u64(n));
    const uint64_t sq = x * x;

    if ((n - sq) >> 63) [[unlikely]] {
        return correct_isqrt64_with_square(x, sq);
    }

    return IsqrtSquare64{x, sq};
}

struct alignas(16) IsqrtRemainder64 {
    uint64_t root;
    uint64_t remainder;
};

[[gnu::noinline, gnu::cold]] static IsqrtRemainder64
correct_isqrt64_with_remainder(uint64_t x, uint64_t remainder) noexcept {
    remainder += (x << 1) - 1;
    return IsqrtRemainder64{x - 1, remainder};
}

[[nodiscard]] static inline IsqrtRemainder64
isqrt64_with_remainder(uint64_t n) noexcept {
    const uint64_t x =
        static_cast<uint64_t>(sqrt_u64(n));
    const uint64_t remainder = n - x * x;

    if (remainder >> 63) [[unlikely]] {
        return correct_isqrt64_with_remainder(x, remainder);
    }

    return IsqrtRemainder64{x, remainder};
}

[[nodiscard]] inline uint64_t isqrt128(uint128_t n) noexcept {
    const uint64_t hi = static_cast<uint64_t>(n >> 64);
    if (hi == 0) [[unlikely]] {
        return isqrt64(static_cast<uint64_t>(n));
    }

    const int a = __builtin_clzll(hi) >> 1;
    const unsigned shift = static_cast<unsigned>(a << 1);
    const uint64_t n_lo = static_cast<uint64_t>(n);

    //x86限定で無駄なassemblyを無理やり吐かないようにする
    #if defined(__x86_64__) || defined(__amd64__)
        uint64_t u = hi;
        __asm__("shldq %%cl, %1, %0"
            : "+r"(u)
            : "r"(n_lo), "c"(shift)
            : "cc");
        const uint64_t scaled_lo = n_lo << shift;
    #else
        const uint128_t scaled_n = n << shift;
        const uint64_t u = static_cast<uint64_t>(scaled_n >> 64);
        const uint64_t scaled_lo = static_cast<uint64_t>(scaled_n);
    #endif

    const auto [isqu, remainder] = isqrt64_with_remainder(u);

    const uint64_t quotient =
        ((remainder << 31) | (scaled_lo >> 33)) / isqu;
    const uint64_t base = isqu << (32 - a);
    const uint64_t x = base + (quotient >> a);

    if (hi == UINT64_MAX) [[unlikely]] {
        return UINT64_MAX;
    }

    const uint128_t final_remainder =
        n - static_cast<uint128_t>(x) * x;
    return x - static_cast<uint64_t>(final_remainder >> 127);
}

struct alignas(16) IsqrtSquare128 {
    uint64_t root;
    uint128_t sq;
};

[[gnu::noinline, gnu::cold]] static IsqrtSquare128
correct_isqrt128_with_square(uint64_t x, uint128_t sq) noexcept {
    sq -= (static_cast<uint128_t>(x) << 1) - 1;
    return IsqrtSquare128{x - 1, sq};
}

[[gnu::noinline, gnu::cold]] static IsqrtSquare128
handle_max_isqrt128_with_square() noexcept {
    constexpr uint64_t root = UINT64_MAX;
    constexpr uint128_t sq = (static_cast<uint128_t>(UINT64_MAX) * UINT64_MAX);
    return IsqrtSquare128{root, sq};
}

[[nodiscard]] inline IsqrtSquare128 isqrt128_with_square(uint128_t n) noexcept {
    const uint64_t hi = static_cast<uint64_t>(n >> 64);
    if (hi == 0) [[unlikely]] {
        const auto [root, sq] = isqrt64_with_square(static_cast<uint64_t>(n));
        return IsqrtSquare128{root, static_cast<uint128_t>(sq)};
    }

    const int a = __builtin_clzll(hi) >> 1;
    const uint128_t scaled_n = n << (a << 1);
    const uint64_t u = static_cast<uint64_t>(scaled_n >> 64);
    const auto [isqu, remainder] = isqrt64_with_remainder(u);

    const uint64_t quotient =
        ((remainder << 31) | (static_cast<uint64_t>(scaled_n) >> 33)) /
        isqu;
    const uint64_t base = isqu << (32 - a);
    const uint64_t x = base + (quotient >> a);

    if (hi == UINT64_MAX) [[unlikely]] {
        return handle_max_isqrt128_with_square();
    }

    const uint128_t sq = static_cast<uint128_t>(x) * x;
    const uint128_t final_remainder = n - sq;

    if (final_remainder >> 127) [[unlikely]] {
        return correct_isqrt128_with_square(x, sq);
    }

    return IsqrtSquare128{x, sq};
}

struct alignas(16) IsqrtRemainder128 {
    uint64_t root;
    uint128_t remainder;
};

[[gnu::noinline, gnu::cold]] static IsqrtRemainder128
correct_isqrt128_with_remainder(uint64_t x, uint128_t remainder) noexcept {
    remainder += (static_cast<uint128_t>(x) << 1) - 1;
    return IsqrtRemainder128{x - 1, remainder};
}

[[gnu::noinline, gnu::cold]] static IsqrtRemainder128
handle_max_isqrt128_with_remainder(uint128_t n) noexcept {
    constexpr uint64_t root = UINT64_MAX;
    constexpr uint128_t max_sq = (static_cast<uint128_t>(UINT64_MAX) * UINT64_MAX);
    return IsqrtRemainder128{root, n - max_sq};
}

[[nodiscard]] inline IsqrtRemainder128 isqrt128_with_remainder(uint128_t n) noexcept {
    const uint64_t hi = static_cast<uint64_t>(n >> 64);
    if (hi == 0) [[unlikely]] {
        const auto [root, rem] = isqrt64_with_remainder(static_cast<uint64_t>(n));
        return IsqrtRemainder128{root, static_cast<uint128_t>(rem)};
    }

    const int a = __builtin_clzll(hi) >> 1;
    const uint128_t scaled_n = n << (a << 1);
    const uint64_t u = static_cast<uint64_t>(scaled_n >> 64);
    const auto [isqu, remainder] = isqrt64_with_remainder(u);

    const uint64_t quotient =
        ((remainder << 31) | (static_cast<uint64_t>(scaled_n) >> 33)) /
        isqu;
    const uint64_t base = isqu << (32 - a);
    const uint64_t x = base + (quotient >> a);

    if (hi == UINT64_MAX) [[unlikely]] {
        return handle_max_isqrt128_with_remainder(n);
    }

    const uint128_t sq = static_cast<uint128_t>(x) * x;
    const uint128_t final_remainder = n - sq;

    if (final_remainder >> 127) [[unlikely]] {
        return correct_isqrt128_with_remainder(x, final_remainder);
    }

    return IsqrtRemainder128{x, final_remainder};
}

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
    // 128-bit でも下位 6 bit による Mod 64 判定はそのまま成立する
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
