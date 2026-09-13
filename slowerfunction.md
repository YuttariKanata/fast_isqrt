# より遅い関数

ここでの実装("include/fast_isqrt.hpp")よりも遅い関数を載せておきます。

## isqrt64

### 初歩的な物

* 二分探索
* ニュートン法

### long doubleを使ったもの

```cpp
[[nodiscard]] static inline uint64_t isqrt64(uint64_t n) noexcept {
    return static_cast<uint64_t>(std::sqrt(static_cast<long double>(n)));
}
```

