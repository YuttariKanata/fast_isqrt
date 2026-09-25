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

これは残念ながらそこまで高速ではありません。この`sqrt_u128`を使って`isqrt64`と同じアルゴリズムを実行すると、`2^54/3 + 2`以下の整数に対して正しい判定が可能ですが、`isqrt128`より遅くなってしまいます。

## is_perfect_fourth_power

### Mod63の有無

## mod63 あり／なし のベンチマーク比較結果

| 関数 / 条件 | パラメータ | mod63 なし (平均) | mod63 あり (平均) | 差分 (あり - なし) |
| :--- | :--- | :---: | :---: | :---: |
| **is_perfect_fourth_power64** | Random Inputs (Early Reject) | 3.98 cycles | 4.28 cycles | +0.30 cycles |
| | Pure Quads (Worst-case) | 13.84 cycles | 14.80 cycles | +0.96 cycles |
| | Non-quadratic (Best-case) | 1.82 cycles | 1.85 cycles | +0.03 cycles |
| **is_perfect_fourth_power128** | Random Inputs (Early Reject) | 5.25 cycles | 5.22 cycles | -0.03 cycles |
| | Pure Quads (Worst-case) | 40.80 cycles | 46.04 cycles | **+5.24 cycles** |
| | Non-quadratic (Best-case) | 2.47 cycles | 2.50 cycles | +0.03 cycles |

---

### 詳細データ（全4回分）

| Function | Benchmark Case | Without mod (avg 6-runs) | With mod63 (avg 6-runs) | Diff (mod63 - Without) | With mod45 (avg 6-runs) | Diff (mod45 - Without) |
| :--- | :--- | :---: | :---: | :---: | :---: | :---: |
| `is_perfect_fourth_power64` | Random Inputs (Early Reject) | 3.97564 cycles | 4.26734 cycles | **+0.29170** | 4.03197 cycles | **+0.05633** |
| | Pure Quads (Worst-case) | 13.83647 cycles | 14.80477 cycles | **+0.96830** | 14.83548 cycles | **+0.99902** |
| | Non-quadratic (Best-case) | 1.81841 cycles | 1.85070 cycles | **+0.03229** | 1.82882 cycles | **+0.01041** |
| `is_perfect_fourth_power128` | Random Inputs (Early Reject) | 5.25287 cycles | 5.20254 cycles | **-0.05033** | 5.06715 cycles | **-0.18572** |
| | Pure Quads (Worst-case) | 40.63302 cycles | 46.02782 cycles | **+5.39480** | 44.97082 cycles | **+4.33780** |
| | Non-quadratic (Best-case) | 2.47415 cycles | 2.50792 cycles | **+0.03377** | 2.71561 cycles | **+0.24146** |


`is_perfect_fourth_power128`には`Mod45`を適用する意義があります。
