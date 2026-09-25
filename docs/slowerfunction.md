# より遅い関数

ここでの実装("include/fast_isqrt.hpp")よりも遅い関数を載せておきます。

## isqrt64

### 初歩的な物

* 二分探索
* ニュートン法

### 最適化のしていないもの

[Nyaan's Library : isqrt.hpp](https://nyaannyaan.github.io/library/math/isqrt.hpp.html?ref=trap.jp)

### long doubleを使ったもの

```cpp
[[nodiscard]] static inline uint64_t isqrt64(uint64_t n) noexcept {
    return static_cast<uint64_t>(std::sqrt(static_cast<long double>(n)));
}
```

### uint128_t を double に変換して sqrtするもの

```cpp
[[nodiscard]] static inline uint64_t sqrt_u128(uint128_t n) noexcept {
    double x = static_cast<double>(n);
#if defined(__AVX__) && (defined(__x86_64__) || defined(__amd64__))
    __asm__("vsqrtsd %0, %0, %0" : "+x"(x));
#elif defined(__SSE2__) && (defined(__x86_64__) || defined(__amd64__))
    __asm__("sqrtsd %0, %0" : "+x"(x));
#else
    x = __builtin_sqrt(x);
#endif
    return static_cast<uint64_t>(x);
}
```

これは残念ながらそこまで高速ではありません。

## is_perfect_fourth_power

### Mod63

| 対象 (ビット幅) | テストケース | Mod63 なし (平均) | Mod63 あり (平均) | 差分 (あり－なし) |
| --- | --- | --- | --- | --- |
| fourth_power64 | Random Inputs (Early Reject) | 3.9674 | 4.0289 | +0.0615 |
| | Pure Quads (Worst-case) | 13.7546 | 14.8631 | +1.1085 |
| | Non-quadratic (Best-case) | 1.6784 | 1.7651 | +0.0867 |
| fourth_power128 | Random Inputs (Early Reject) | 5.9250 | 5.2354 | -0.6896 |
| | Pure Quads (Worst-case) | 41.4765 | 45.7876 | +4.3111 |
| | Non-quadratic (Best-case) | 2.5859 | 2.4903 | -0.0956 |
