---
layout: post
title:  "Statistical Mechanics Notes: Mean Field Approximation"
date:   2016-01-19 21:02:00
---



Ising model Hamiltonian:

$$ H=-K\sum_{<ij>}s_i s_j - h\sum_i s_i$$

# Mean Field Approximation


## Derivation of Mean Field Hamiltonian

Use a __global macroscopic__ ensemble average $m=\langle \sum_i s_i \rangle/N$ to approximate the __microscopic__ surrounding environment of each site:

$$H=-K\sum_{<ij>} (m+\delta s_i)(m+\delta s_j) - h\sum_i s_i$$

Abandon the $\sum \delta s_i \delta s_j$ terms because they are second-order infinitesimals.

$$H\approx -K\sum_{<ij>} m(\delta s_i+\delta s_j) - K\sum_{<ij>}m^2 - h\sum_i s_i$$

Revert to notation $\delta s_i \equiv s_i-m$ again. Let $q$ be the number of nearest neighbors each site has (e.g. $q=2^d$ for square lattices, where $d$ is the dimension). Note that there are $qN/2$ pairs of nearest neighbors in total. Thus $\sum_{<ij>} s_i=\frac{q}{2}\sum_i s_i$. 

$$\therefore H_\text{MFA}=-(Kqm+h)\sum_i s_i +\frac12 NKqm^2$$

This is our mean field Hamiltonian.

## Mean field partition function and free energy

$$\begin{aligned}Z_\text{MFA}&=\sum_{\{s_i=\pm1\}} e^{-\beta H_\text{MFA}}=e^{-\frac12 \beta KNqm^2} \prod_i \sum_{s_i=\pm1}e^{\beta (Kqm+h)s_i} \\ &=e^{-\frac12 \beta KNqm^2} 2^N \cosh^N \beta(Kqm+h)\end{aligned}$$

$$\begin{aligned}F_\text{MFA}/N&=-\frac{k_B T}{N}\ln Z_\text{MFA} \\ &=\frac{Kqm^2}{2} -k_B T\ln [2\cosh \beta(Kqm+h)]\end{aligned}$$

Note that $m$ is not in fact a parameter here. If the _real_ parameters $T, K, h$ are fixed, then _they determine what value $m$ is!_ (Remember the definition of $m$ – it's an ensemble average.)

## Self-consistency relation

We haven't figured out the value of $m$ yet. This is done by solving a self-consistency equation, because the expression used to obtain $m$ (the partition function) contains $m$ itself. There are two (similar) ways to obtain the self-consistency relation.

First, we can make use of the MFA Hamiltonian above:

$$m=\frac{1}{N}\langle \sum_i s_i \rangle=\frac{1}{N} \sum_i \langle s_i \rangle = \langle s_i \rangle$$

$$\therefore m=\frac{\sum_{s_i=\pm 1}s_i e^{\beta (Kqm+h)s_i}}{\sum_{s_i=\pm 1} e^{\beta (Kqm+h)s_i}}=\tanh \beta (Kqm+h)$$

The summation extends only to $s_i$ because everything else factors out and cancels.

The second (easier) way is to start from the original Ising Hamiltonian, and separate it into two parts: terms containing $s_i$ (which we denote by $H_i$ and terms that do not contain $s_i$ (which we denote as $H_{0i}$). Obviously $H_i=-K\sum_{<j>}s_i s_j -hs_i$ where the sum is over the $q$ nearest neighbors of $i$. Next, neglect the fluctuations of the surrounding environment: replace each $s_j$ with a global average $m$. Now $H_i \approx -(Kqm+h)s_i$. We then proceed to write out $Z$ and note that the $e^{-\beta H_{0i}}$ contributions factor out and cancel each other and what's left is easily shown to be the same expression as above.

So this is the self-consistency relation:

$$m=\tanh \beta(Kqm+h)$$


Solving this equation (numerically) will tell us the value of $m$.

When $h=0$, it becomes:
$$m=\tanh \beta Kqm$$

This equation has either one or three solutions. The separating point between these two is $\beta Kq=1$, when $y=x$ and $y=\tanh \beta Kqx$ are tangent to each other at the origin. This is the critical point:

$$\frac{Kq}{k_B T_c}=1$$



Above $T_c$, there is only one solution $m=0$. Below $T_c$, there are three solutions but $m=0$ is unstable (a local maximum, as we will see later in the Landau theory). The positive and negative values are the two symmetrical values $m$ can assume with no preference over any one.

![](/images/B=0.svg)

As shown in the plot, at the critical point, there is a clear "sudden change" ($\partial m/\partial h$ is discontinuous), i.e. phase transition. $m$ itself is a derivative of the free energy $F$, so this is a second-order phase transition. If we gradually lower the temperature from above $T_c$ to below $T_c$, since there are two equally favored states, the system will spontaneously enter one of them. This is a __spontaneous symmetry breaking__. It is often associated with __degenerate ground states__ ($m=\pm1$ are perfectly symmetric when $T=0$).

If $h\ne 0$, there is no phase transition. Although in some cases there are three roots of the self-consistency equation, the middel one is still unstable and the one that has an opposite sign of $h$ is _metastable_. In Landau theory, it's a local minimum but higher than the other global minumum. It wants to flip its sign and assume the true stable value if opportunity arises. (But note that if this flip occurs, e.g. when we raise temperature so that the metastable root is no longer there and we only have one stable root, this is a 1st order phase transition because $m$ itself is discontinuous.) We plot $m$ under different values of $|h|$ and see that indeed their is no "sudden change". (The upper curve is the stable value for $h>0$ and the lower curve for $h<0$.)

![](/images/B=1e-3.svg)
![](/images/B=1e-1.svg)
![](/images/B=10.svg)

Stable and metastable states under the same $h>0$:

![](/images/metastable.svg)

## Critical exponents

There are 6 critical exponents: $\alpha, \beta, \gamma, \delta,\nu, \eta$. We can obtain the first four from the MFA method. 

$t\equiv (T-T_c)/T_c$

### $\alpha$: heat capacity

$$C\propto \frac{\partial^2 F}{\partial t^2}$$

$C \propto t^{-\alpha}$ near $T_c$.

We already have the mean field $F$. Use that to differentiate twice w.r.t $T$ and we will see that $C \propto$ constant, i.e. $\alpha=0$. This can be done much more easily later using the Landau theory.

### $\beta$: $m$ and temperature

$m\propto |t|^{\beta}$ near $T_c$ (but below it).

Use the self-consistenty relation and Taylor expand $\tanh x \approx x-x^3/3$ because $m \rightarrow 0$. Then 
$$m=\beta Kqm-\frac{(\beta Kqm)^3}{3}$$

Solve for $m$ and note that $1=\beta_c Kq$. We obtain $m^2\propto (\beta-\beta_c) \propto (T_c-T)$. So $\beta=1/2$.




### $\delta$: $m$ and $h$
$m\propto h^{\delta}$.

These are _critical exponents_, we only care about temperatures near criticality. Since there is no criticality for nonzero $h$, we directly set $T=T_c$ i.e. $\beta Kq=1$ : $m=\tanh (m+\beta h)$. $\therefore \tanh^{-1} m =m+\beta h$. Next Taylor expand $\tanh^{-1}$ and it's easily seen that $m^3\propto h$. So $\delta=1/3$.

### $\gamma$: $\partial m/\partial h$ and $t$

Susceptibility $\xi \propto \frac{\partial m}{\partial h} |_{h=0}\propto t^{-\gamma}$.

Again let $T\rightarrow T_c$ and $h\rightarrow 0$ both from above. Take the derivative over $h$ in the original self-consistency relation. Note that $m=0$ for $T>T_c$. We can show that $\xi \propto t^{-1}$, so $\nu=1$.

## Switching to Landau theory

In fact, it's quite hard to obtain $\gamma$ and $\alpha$ from the MFA directly, and downright impossible to get $\eta$ and $\nu$. However in the upcoming Landau theory, we only need to obtain an expression for $\beta$ and show that the parameter there has $r_0 \propto t$, and then $\alpha$ and $\gamma$ can be calculated easily. $\eta$ and $\nu$ takes more work and the Landau-Ginzburg theory must be used for them.

However, Landau theory is equivalent to MFA and they both yield not so good (although indeed the same) results for lower dimensions.

## Why does MFA fail miserably for 1, 2, and 3 dimensions?

Because we used a macroscopic average to replace the interaction between a particular site and its nearest neighbors. In higher dimension, each site has many neighbors and the overall interaction between it and those neighbors will be quite close to the global average value. But in lower dimensions, each site has very few neighbors and the fluctuations can cause the real scenario to deviate from a macroscopic average dramatically.





<script type="text/x-mathjax-config">
if (typeof MathJaxListener !== 'undefined') {
  MathJax.Hub.Register.StartupHook('End', function () {
    MathJaxListener.invokeCallbackForKey_('End');
  });
}
</script>
<script type="text/javascript" src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
