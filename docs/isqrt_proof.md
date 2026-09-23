# hoge

## isqrt64の正当性

$`n\ge1`$について考えます。この時$`\text{ulp}(n) = 2^{\lfloor \log_2(n) \rfloor - 52}`$です。
$`n_d =`$ `static_cast<double>(n)`
$`s_r =`$ `std::sqrt(static_cast<double>(n))`
$`s =`$ `static_cast<uint64_t>(std::sqrt(static_cast<double>(n)))`
$`k = \lfloor\sqrt{n}\rfloor`$
$`M = k - \frac{1}{2}\text{ulp}(k)`$
と置きます。

ここで、`double`はIEEE 754 binary64であり、整数から`double`への変換および`std::sqrt`は`Round-to-Nearest, Ties-to-Even (RN)`で丸められるものとします。目標は$`k\le s < k+2`$を示すことです。

### $`k\le s`$について

#### [CASE1 : $`k`$が2の冪でない時]

まず、$`M < \sqrt{n_d}`$ならば、$`k \le s_r`$であることを言います。$`k`$のすぐ隣の小さい`double`を$`k^-`$とします。$`k`$が2の冪でないので、$`k^- = k-\text{ulp}(k)`$です。従って、$`k^-`$と$`k`$のちょうど中点は

$$
\frac{k^-+k}{2}
=
k-\frac12\text{ulp}(k)
=
M
$$

です。したがって、$`M<\sqrt{n_d}`$ならば、$`\sqrt{n_d}`$を`RN`で丸めた結果が$`k`$より小さくなることはありません。
よって$`M<\sqrt{n_d}`$ならば$`k\le s_r`$です。
TODO: なお、$`\sqrt{n_d}=M`$の場合は、`Ties-to-Even`によって結果が$`k^-`$になる可能性がある。

ここから、$`M<\sqrt{n_d}`$を示します。
次に、$`n_d`$について、$`|n_d-n|\le\frac12\text{ulp}(n_d)`$が成立します。特に、$`n_d\ge n-\frac12\text{ulp}(n_d)`$です。
その次に、$`M^2-n_d`$を考えます。

$$
M^2
=
\left(k-\frac12\text{ulp}(k)\right)^2
=
k^2-k\cdot\text{ulp}(k)
+\frac14\left(\text{ulp}(k)\right)^2
$$

ですから、

$$
\begin{aligned}
n_d-M^2
&\ge
n-\frac12\text{ulp}(n_d)
-k^2+k\cdot\text{ulp}(k)
-\frac14\left(\text{ulp}(k)\right)^2\\
&=
(n-k^2)
+
\left(
k\cdot\text{ulp}(k)
-\frac12\text{ulp}(n_d)
-\frac14\left(\text{ulp}(k)\right)^2
\right).
\end{aligned}
$$

ここで$`k=\lfloor\sqrt n\rfloor`$なので、$`n-k^2\ge0`$です。従って、

$$
k\cdot\text{ulp}(k)
-\frac12\text{ulp}(n_d)
-\frac14\left(\text{ulp}(k)\right)^2
>0
$$

を示せば、$`n_d-M^2>0`$すなわち、$`M<\sqrt{n_d}`$が従い、結果として$`k\le s_r`$を得ます。

上記の不等式を示します。
$`k`$が2の冪でないので、ある整数$`m\ge0`$が存在して$`2^m<k<2^{m+1}`$となります。
$`k`$は整数なので、実際には$`k\ge2^m+1`$です。また、$`\text{ulp}(k)=2^{\lfloor\log_2(k)\rfloor-52}=2^{m-52}`$です。
一方、$`k^2\le n<(k+1)^2`$です。$`k<2^{m+1}`$かつ$`k`$は整数なので、$`k+1\le2^{m+1}`$であり、$`n<(k+1)^2\le2^{2m+2}`$となります。従って、$`\lfloor\log_2 n\rfloor\le2m+1`$です。さらに、$`2^{2m}<k^2\le n`$より、$`2^{2m}<n<2^{2m+2}`$が分かります。

ここで、$`n_d`$について考えます。もし$`n_d=2^{2m+2}`$ならば、$`n<2^{2m+2}=n_d`$と、$`M^2<k^2\le n`$より$`M^2<n_d`$が成立します。これはもともと示したかった$`M<\sqrt{n_d}`$に相当します。

よって、ここから$`n_d<2^{2m+2}`$の時について話します。
この時、$`\lfloor\log_2(n_d)\rfloor < 2m+2`$ つまり$`\lfloor\log_2(n_d)\rfloor \le 2m+1`$が成立するので、
$`\frac{1}{2}\text{ulp}(n_d) = \frac{1}{2}\cdot2^{\lfloor\log_2(n_d)\rfloor-52}\le2^{-1}\cdot2^{2m+1-52}=2^{2m-52}`$です。
以上より、

$$
\begin{aligned}
k\cdot\text{ulp}(k)
-\frac{1}{2}\text{ulp}(n_d)
-\frac{1}{4}\left(\text{ulp}(k)\right)^2
&\ge (2^m+1)\cdot2^{m-52}-2^{2m-52}-\frac{1}{4}\left(2^{m-52}\right)^2 \\
& = 2^{m-52}-\frac{1}{4}\left(2^{m-52}\right)^2 \\
& = \frac{1}{4} \cdot 2^{m-52} \left(4-2^{m-52}\right)
\end{aligned}
$$

そういえば、$`n<2^{64}`$なので$`k<2^{32}`$、従って$`m\le31`$であり、$`m-52\le-21`$です。
よって、$`2^{m-52} \le 2^{-21} < 4`$ですから、$`4-2^{m-52} > 0`$です。結果的に、

$$
k\cdot\text{ulp}(k)
-\frac{1}{2}\text{ulp}(n_d)
-\frac{1}{4}\left(\text{ulp}(k)\right)^2
\ge
\frac{1}{4} \cdot 2^{m-52} \left(4-2^{m-52}\right) > 0
$$

を示すことができました。
したがって、$`M<\sqrt{n_d}`$より、$`k\le s_r`$です。そして、$`s=\lfloor s_r\rfloor`$かつ、$`k`$が整数ですから、

$$
\boxed{k\le s}
$$

が示されました。

#### [CASE2 : $`k`$が2の冪の時]

この時、$`m`$を非負整数として$`k=2^m`$とすると、$`n\ge k^2=2^{2m}`$です。
$`k^2=2^{2m}`$は`double`型で正確に表現可能ですから、$`n\ge k^2`$より、$`n_d \ge k^2`$が言えます。
($`n_d<k^2`$ならば$`n`$の`double`型での表現として$`k^2`$という値があり、$`|n-k^2|=n-k^2<n-n_d=|n-n_d|`$なのに、$`n`$が$`n_d`$にキャストされているから)
ここで$`\sqrt{n_d}\ge k`$から、$`s_r\ge k`$が言えます。同じように$`s_r<k`$なる浮動小数点数にキャストされていると、`std::sqrt`がIEEE標準によって正確であることが要求されていることに矛盾するためです。
最後に、$`k`$が整数であるため$`s=\lfloor s_r\rfloor`$から、$`k\le s`$が示せました。

---

$`n=0`$の時は、`static_cast<uint64_t>(std::sqrt(static_cast<double<n>))`が$`0`$になるため大丈夫です。

---

### $`s < k+2`$について

## isqrt128の正当性

`isqrt128`の方を考えます。
$`s_n =`$ `scaled_n`として、$`s_n = 2^{64}u+v`$とします。ただし、$`0\le v < 2^{64}`$です。
ここで、`isqrt64_with_remainder`によって$`q=\lfloor\sqrt{u}\rfloor`$と$`r=u-q^2`$を得ます。これは$`u=q^2+r`$を満たすので、結局$`s_n = 2^{64}q^2+2^{64}r+v = \left(2^{32}q\right)^2+2^{64}r+v`$と表されます。
ここで、`w = v >> 33`つまりは、$`w = \left\lfloor\frac{v}{2^{33}}\right\rfloor`$とします。
そうすると、$`w\le\frac{v}{2^{33}}<w+1`$、分母を払って$`2^{33}w\le v<2^{33}(w+1)`$が分かります。

次に、`quotient`の式を考えます。`remainder << 31`と、`static_cast<uint64_t>(scaled_n) >> 33)`は、bitの重なりが無いですから、`((remainder << 31) | (static_cast<uint64_t>(scaled_n) >> 33))`は、通常の加算、すなわち$`2^{31}r+w`$になります。
ここで、$`r`$についてですが、$`q^2\le u<(q+1)^2`$より、$`r\le 2q`$です。そして$`q=\lfloor\sqrt{u}\rfloor\le\sqrt{u}<2^{32}`$ですから、$`2^{31}r\le2^{32}q<2^{64}`$より、$`2^{31}r`$はオーバーフローしません。
`Q = ((remainder << 31) | (static_cast<uint64_t>(scaled_n) >> 33)) /isqu`とします。つまりは、$$Q=\left\lfloor\frac{2^{31}r+w}{q}\right\rfloor$$
です。この時、以下のようになります。

$$
\begin{aligned}
Q&=\left\lfloor\frac{2^{31}r+w}{q}\right\rfloor \\
Q &\le \frac{2^{31}r+w}{q} < Q+1 \\
Qq &\le 2^{31}r+w < q(Q+1) \\
q(Q+1) &\ge 2^{31}r+w+1 \\
2^{33}q(Q+1) &\ge 2^{64}r+2^{33}(w+1) > 2^{64}r+v
\end{aligned}
$$

目標は、`Y = q<<32 + Q`について、$`Y \ge \lfloor\sqrt{s_n}\rfloor`$を示すことです。$`Y`$が自然数であることから、$`Y+1 > \sqrt{s_n}`$を示せばよいです。よって次は、$`(Y+1)^2`$を計算します。

$$
\begin{aligned}
(Y+1)^2 &= (2^{32}q+Q+1)^2 \\
&= \left(2^{32}q\right)^2+2^{33}q(Q+1) + (Q+1)^2 \\
&> \left(2^{32}q\right)^2+2^{64}r+v+(Q+1)^2 \\
&> s_n
\end{aligned}
$$

よって示せました。

実際には、$`s_n = 2^{2a}n`$であり、$`x=\left\lfloor\frac{Y}{2^a}\right\rfloor`$ですので、本当は$`x \ge \lfloor\sqrt{n}\rfloor`$を示さないといけないのですが、$`Y\ge \left\lfloor\sqrt{s_n}\right\rfloor = \left\lfloor\sqrt{2^{2a}n}\right\rfloor = \left\lfloor2^a\sqrt{n}\right\rfloor \ge \left\lfloor2^a\left\lfloor\sqrt{n}\right\rfloor\right\rfloor = 2^a\left\lfloor\sqrt{n}\right\rfloor`$ですから、両辺$`2^a`$で割ってfloorを取ると、$`\left\lfloor\frac{Y}{2^a}\right\rfloor \ge \left\lfloor\sqrt{n}\right\rfloor`$が示せます。

## is_perfect_square64, is_perfect_square128の正当性

$`k^2=n`$となる時には、$`k=s`$が成立することを示したいです。\
$`k^2=n`$ですから、$``$
