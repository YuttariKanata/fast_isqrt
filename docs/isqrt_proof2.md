# isqrt proof

## 記法

ここでは整数$`n\ge1`$について考えます。\
ここで浮動小数点数と言うとIEEE 754 binary64を指すものとします。\
正の実数$`x`$を浮動小数点数に変換した際の値を$`\lang x\rang`$と書きます。\
つまり$`\lang x\rang =`$ `static_cast<double>(x)`です。($`|x|`$が$`2^{1024}-2^{970}`$未満の物しか考えません。)\
また、浮動小数点数$`x`$を整数に変換する際は、切り捨てですから、$`\lfloor x \rfloor`$と書きます。\
$`n`$の2進数表記での桁数を$`\text{len}(n)`$と書きます。$`\text{len}(n) = \lfloor\log_2(n)\rfloor+1`$です。
`std::sqrt`の丸め方は`Round to nearest, ties to even`(偶数丸め)であるものとします。他の丸め方も可能ですが、最近のAVX-512やRISC-Vでない限り制御レジスタの変更と復元は重いので偶数丸めに固定します。

$`\text{ulp}(n) = 2^{\lfloor\log_2(n)\rfloor-52} = 2^{\text{len}(n)-53}`$\
$`s_r = \sqrt{\lang n \rang}`$\
$`k = \lfloor\sqrt{n}\rfloor`$とします。
浮動小数点数$`x`$のすぐ隣の$`x`$より小さい浮動小数点数を$`x_-`$とします。\
浮動小数点数$`x`$のすぐ隣の$`x`$より大きい浮動小数点数を$`x_+`$とします。

## 実数から浮動小数点数への変換

$r=`\sqrt{\lang n\rang}`$として出てきた実数$`r`$を浮動小数点数$`\lang r\rang`$に変換した際に、それが目的の浮動小数点数$`x`$になる$`r`$の範囲はどこでしょうか？\
IEEE 754 により`std::sqrt`は偶数丸めが正確に行われるので、

* $`x`$の仮数部最終bitが0(偶数)の場合、 $$x - \frac{x-x_-}{2} = \frac{x_-+x}{2} \le r \le \frac{x+x_+}{2} = x+\frac{x_+-x}{2}$$
* $`x`$の仮数部最終bitが1(奇数)の場合、 $$x - \frac{x-x_-}{2} = \frac{x_-+x}{2} < r < \frac{x+x_+}{2} = x+\frac{x_+-x}{2}$$

ここで、もし$`x`$が2の整数乗として表せないならば、$`\frac{x-x_-}{2} = \frac{x_+-x}{2}`$ですから、これを$`\delta`$とすれば、

$$ x-\delta < r < x+\delta \implies \lang r\rang = x $$
$$ x-\delta \le r \le x+\delta \impliedby \lang r\rang = x $$

です。特に、$`\lang r \rang`$が2の整数乗として表せないならば、$`\lang r \rang - \delta \le r \le \lang r \rang + \delta`$が常に成立します。\
もし$`x`$が2の整数乗として表せるならば、$`x-x_- = \frac{x_+-x}{2}`$ですから、これを$`\delta`$とすれば、

$$ x-\frac{\delta}{2} \le r \le x+\delta \implies \lang r\rang = x $$
$$ x-\frac{\delta}{2} \le r \le x+\delta \impliedby \lang r\rang = x $$

です。特に$`x-\delta \le r \le x+\delta \impliedby \lang r\rang = x`$が成立します。

上記の議論より、

$$ x - \frac{\delta}{2} \le r < x+\delta \implies \lang r \rang = x $$
$$ x-\delta \le r \le x+\delta \impliedby \lang r\rang = x $$

が常に成立します。特に、2番目の式から

$$ \lang r \rang - \frac{\lang r \rang_+ - \lang r \rang}{2} \le r \le \lang r \rang + \frac{\lang r \rang_+ - \lang r \rang}{2} $$

と分かります。\
また、$`\text{ulp}(\lang r \rang) = 2^{\lfloor\log_2(\lang r \rang)\rfloor - 52} \le 2^{\log_2(\lang r \rang) - 52} = 2^{-52}\lang r \rang`$です。\
$`x`$が浮動小数点数の正規化数である限り$`\text{ulp}(x) = x_+-x`$が成立するので、

$$ \lang r \rang - \frac{1}{2}\text{ulp}(\lang r \rang) \le r \le \lang r \rang + \frac{1}{2}\text{ulp}(\lang r \rang) $$
$$ \lang r \rang - 2^{-53}\lang r \rang \le r \le \lang r \rang + 2^{-53}\lang r \rang $$
$$ \frac{r}{1+2^{-53}} \le \lang r \rang \le \frac{r}{1-2^{-53}} $$

が常に成り立つことまでわかります。

---

### 補題

もう一つ考えておきたいことがあります。ある1以上の浮動小数点数かつ正規化数$`x`$に対して、ある正の整数$`m`$が存在して、$`2^m \le x < 2^{m+1}`$となります。\
この時$`\lfloor\log_2(x)\rfloor=m`$なので、$`\text{ulp}(x) = 2^{m-52}`$です。\
もし$`x`$が2の冪で表せないならば、$`\frac{x+x_-}{2} = x - \frac{1}{2}\text{ulp}(x) = x - 2^{m-53}`$です。\
そして、$`2^m < x < 2^{m+1}`$ですから、$`-x2^{-53} < -2^{m-53} < -x2^{-54}`$となるので、

$$ x(1-2^{-53}) < \frac{x+x_-}{2} < x(1-2^{-54}) $$

と分かります。\
もし$`x`$が2の冪で表せるならば、$`x=2^m`$であり、$`\frac{x+x_-}{2} = x - \frac{1}{4}\text{ulp}(x) = x - 2^{m-54}`$です。\
よって、$`\frac{x+x_-}{2} = x - 2^{m-54} = x - x2^{-54} = x(1-2^{-54})`$です。

以上より、$`x`$が2の冪かどうかにかかわらず、

$$ x(1-2^{-53}) < \frac{x+x_-}{2} \le x(1-2^{-54}) $$

が成立します。

## 証明

---

### isqrt64の正当性の証明

ここからの議論は$`k`$が浮動小数点数として表せる、つまり$`k \le 2^{53}`$を暗に仮定しています。

目標は、$`k\le\lfloor\lang s_r \rang\rfloor \le k+1`$を言うことです。$`k`$が整数なので、$`k \le\lang s_r \rang< k+2 \implies k \le \lfloor\lang s_r \rang\rfloor \le k+1`$が言えます。よって、ここからは$`k \le\lang s_r \rang< k+2`$を示していきます。\
また、$`n=k^2`$となる場合、常に$`k = \lfloor\lang s_r \rang\rfloor`$が成立することを示します。

$`k \le \lang r \rang`$となる$`r`$の十分条件は、先の議論により$`\frac{k+k_-}{2} < r`$です。\
また、$`k+2 \le \lang r \rang`$となる$`r`$の必要条件は、先の議論により$`\frac{(k+2)+(k+2)_-}{2} \le r`$です。\
よって、$`k \le \lang r \rang < k+2`$となる$`r`$の十分条件は、$`\frac{k+k_-}{2} < r < \frac{(k+2)+(k+2)_-}{2}`$となります。全て正なので平方すると、

$$ \left(\frac{k+k_-}{2}\right)^2 < r^2 < \left(\frac{(k+2)+(k+2)_-}{2}\right)^2 $$

となります。ここでは$`r^2 = s_r^2 = \lang n \rang`$について考えているので、つまりは$`\lang n \rang`$がこの範囲に入っていればいいということになります。\
$`k = \lfloor \sqrt{n} \rfloor`$でした。つまり$`k^2 \le n < (k+1)^2`$です。これを後で使います。

#### $`k \le \lang s_r \rang`$の方

補題により$`\frac{k+k_-}{2} \le k(1-2^{-54})`$と分かります。

$`k^2 \le n`$から、$`\frac{k^2}{1+2^{-53}} \le \frac{n}{1+2^{-53}} \le \lang n \rang`$です。$`(1-2^{-54})^2 < \frac{1}{1+2^{-53}}`$より、

$$ \left( \frac{k+k_-}{2} \right)^2 \le k^2(1-2^{-54})^2 < \frac{k^2}{1+2^{-53}} \le \lang n \rang $$

が示されました。

#### $`\lang s_r \rang < k+2`$の方

同様に上の方を示していきます。補題より、

$$ (k+2)(1-2^{-53}) < \frac{(k+2)+(k+2)_-}{2}$$

と分かります。$`\lang n \rang \le \frac{n}{1-2^{-53}} < \frac{(k+1)^2}{1-2^{-53}}`$ですから、あとは

$$ \frac{(k+1)^2}{1-2^{-53}} \le (k+2)^2(1-2^{-53})^2 $$

が成り立つ$`k`$の範囲を確認すればいいです。$`k`$が非負であることに注意すると、

$$ \left(\frac{k+1}{k+2}\right)^2 \le (1-2^{-53})^3 $$
$$ 1-\frac{1}{k+2} \le (1-2^{-53})^{3/2} $$
$$ \frac{1}{k+2} \ge 1-(1-2^{-53})^{3/2} $$
$$ k \le \frac{1}{1-(1-2^{-53})^{3/2}}-2 $$

となります。$`-2^{-53} > -1`$と、$`\frac{3}{2} > 1`$より、ベルヌーイの不等式から、
$`(1-2^{-53})^{3/2} > 1 + \frac{3}{2}(-2^{-53}) = 1 - 3\cdot2^{-54}`$が分かるので、$` \frac{1}{1-(1-2^{-53})^{3/2}} > \frac{2^{54}}{3} `$です。

したがって、$`k \le \frac{2^{54}}{3}-2`$なら成り立つことが分かりました。

#### $`n = k^2`$となる時

つまりは、$`\lang s_r \rang < k+1`$らへんを証明したいので、さっきと同じようなことをしていきます。\
補題により、

$$ (k+1)(1-2^{-53}) < \frac{(k+1)+(k+1)_-}{2}$$

です。そしてここがさっきと違うのですが、$`\lang n \rang \le \frac{n}{1-2^{-53}} = \frac{k^2}{1-2^{-53}}`$ですから、あとは

$$ \frac{k^2}{1-2^{-53}} \le (k+1)^2(1-2^{-53})^2 $$

が成り立つ$`k`$の範囲を確認すればいいです。と言っても、これはさっきの不等式の$`k`$を$`k-1`$にしたものに他ならないので、$`k \le \frac{2^{54}}{3} - 3`$なら成り立つことが分かります。

### isqrt128の正当性の証明