---
layout: post
title:  "Landau-Ginzburg notes"
date:   2016-01-24 
---

MFA $$\rightarrow$$ (treat $$m$$ as if it's a real parameter) $$\rightarrow$$ Landau $$\rightarrow$$ (let $$m$$ vary with $$\mathbf{r}$$) $$\rightarrow$$ Landau-Ginzburg

## Landau theory

Although we said in the MFA notes that the $$m$$ in the MFA free energy is not a real parameter but a fixed number under given $$T$$ and $$h$$, let us now pretend it is a real _free_ variable as if it can assume any value independent of $$T,h$$ and treat this $$m$$ more seriously.

### Landau free energy

Once we assume $$m$$ is a free variable, we can Taylor expand the free energy in $$m$$, for the moment up until the 4th power:

$$
f(m)=-hm+r_0 m^2 + um^4
$$

When $$h=0$$, only even powers survive because of the symmetry of $$m$$ and $$-m$$ in the Ising model and its free energy as an even function of $$m$$.

Currently we don't need to know the specific form of $$r_0$$ and $$u$$. We only need to know they are the Taylor coefficients of whatever function of $$m$$ the free energy is.

Next see graphs for what this function looks like.

![Landau free energy](http://gaberber.github.io/images/Landau.png)



$$u$$ is always positive We first look at what happens when $$h=0$$.

-   When $$r_0<0$$, $$f(m)$$ has two minima and one local maximum.  These are exactly the three roots we got from the self-consistency relation in MFA. The local maximum is an unstable point. The system will only reside around the two minima, $$\pm m_0$$. This corresponds to the case of $$T<T_c$$.
-   When $$r_0>0$$, $$f(m)$$ has only one minimum at $$m=0$$. This is the only root we got from the $$m=\tanh \beta Kqm$$ relation. This case corresponds to $$T>T_c$$.
-   When $$r_0=0$$, this is $$T=T_c$$. Although we still have only one minimum, the region around this minimum is very flat (the first three orders of derivatives are all 0). This means the system can travel left and right along the $$m$$ axis without paying much price in free energy increase. This suggests that the system fluctuates heavily around the average at critical temperature.

$$
m_0=\begin{cases}0, \quad r_0 \propto (T-T_c)\ge 0 \\ \pm \sqrt{-\frac{r_0}{2u}}, \quad r_0 \propto (T-T_c) <0  \end{cases}
$$

Then we look at what happens if $$h\ne 0$$.

![Landau with B](http://gaberber.github.io/images/Landau with B.png)



Now we know what "metastable" means: the $$h>0,m<0$$ solution is a local minimum but not a global minimum. It will jump to the global minimum whenever fluctuation gives it enough energy to cross the $$m=0$$ wall.

### Critical exponents $$\beta,\alpha,\gamma$$

We stated above $$r_0\propto (T-T_c)$$, but why? Because below $$T_c$$, we know from above that $$m_0$$ approaches 0 as $$m_0=\sqrt{-r_0/(2u)}$$. $$u$$ is positive (actually it doesn't vary with $$T$$ to the first order), so the rate of $$m_0$$ approaching 0 in the first order is $$m_0\propto (-r_0)^{1/2}$$. Since $$r_0$$ is a parameter that's determined by temperature and we have shown in the previous MFA derivation that $$m_0 \propto (-t)^{1/2}$$ below $$T_c$$, so we immediately recognize:

$$
r_0 \propto t=\frac{T-T_c}{T_c}
$$

This is very helpful for us.

We can very conveniently know:

$$
C\propto \frac{\partial^2 f}{\partial t^2} \propto \frac{\partial ^2}{\partial t^2}r_0 = \text{constant}
$$

so $$\alpha=0$$.

Also

$$
\chi \propto \frac{\partial m}{\partial h}=\left(\frac{\partial h}{\partial m}\right)^{-1}
$$

This can be obtained by letting $$\partial f /\partial m$$ with a nonzero $$h$$ and then showing that $$\frac{\partial h}{\partial m_0}=2r_0+4um_0^2\propto t+\text{const}$$, so $$\xi\propto t^{-1}$$, and thus $$\gamma=1$$. This is much simpler than using the original MFA expression directly.

## Landau-Ginzburg theory

From Landau to Landau-Ginzburg, we only make one crucial change: $$m$$ is no longer a global parameter that assumes the same value for the entire lattice, but we now let $$m$$ vary with $$\mathbf{r}$$, i.e., _it assumes different values at different places on the lattice_.

Now we have  a quantity $$m(\mathbf{r})$$, which means the average spin in a region $$\Omega$$ around the position $$\mathbf{r}$$. This region $$\Omega$$ is _"macroscopically small, microscopically large"_, meaning that each region is large enough to contain many spin sites and  have an average value taking any real value between $$[-1,1]$$, and also small enough for us to use a continuous $$\mathbf{r}$$ to label their positions.

### Hamiltonian

$$
H=\int [k(\nabla m)^2 +r_0 m(\mathbf{r})^2 + u m(\mathbf{r})^4+h(\mathbf{r})m(\mathbf{r})]d^d\mathbf{r}
$$

The new Hamiltonian, besides being an integral over space, differs from the Landau Hamiltonian by a term $$k(\nabla m)^2$$. This term means that we have energy penalty for  making the average spin of two neighboring regions different – if two neighboring regions are "all up + all down", it should have a greater energy than the case "all up + all up".

An immediate use of this new Hamiltonian is to solve the "domain wall" model in 1D. See David Tong's notes for more.

### Correlation function

$$
g(\mathbf{r_i},\mathbf{r_j})\equiv\langle m(\mathbf{r_i})m(\mathbf{r_j})\rangle -  \langle m(\mathbf{r_i})\rangle \langle m(\mathbf{r_j})\rangle
$$

The average notations here mean the ensemble averages at each position, not averaging over space. Note that this "average" is no trivial thing. The freely varying variables are no longer $$N$$ binary variables $$s_i$$, but a _function_ of space, $$m(\mathbf{r})$$. We are doing infinitely many integrals – let the $$m$$ value at each $$\mathbf{r}$$ point vary from $$-1$$ to $$1$$, and then integrate over all $$\mathbf{r}$$. This is, in fact, a _functional integral_. Previously we could still write $$\prod_i \sum_{s_i}$$ (or in the earlier parts of this course we had $$\int d^{3N} \mathbf{r} $$), but now we must write $$\int Dm(\mathbf{r})$$ to indicate this is a funcitonal integral.

From the Ising model's translational and rotational symmetry (when viewed on a macroscopic-average level), we know

$$
g(\mathbf{r_i},\mathbf{r_j})=g(\vert \mathbf{r_i}-\mathbf{r_j}\vert )=g(r)=\langle m(0)m(r)\rangle - \langle m(0)\rangle\langle m(r)\rangle
$$

The shape of the correlation function is nearly always exponential: 

$$
g(r) \sim e^{-\frac{r}{\xi}}
$$

where $$\xi$$ is a length scale that arises as a parameter in this expression. We call this length the **correlation length**. It's the characteristic length over which correlation decay. Its physical meaning is that the magnetization value of two sites more than distance $$\xi$$ apart will be totally independent of each other ($$g=0$$), while two sites within distance $$\xi$$ apart will feel the influence of each other ($$g>0$$) – they want to align with their neighbors.

But scaling laws of critical exponents tell us that $$\xi \rightarrow \infty$$  at the critical point. At the critical point, the correlation becomes algebraic:

$$
g(r) \propto \frac{1}{r^x}
$$

Note that if the correlation function decays with a given exponent $$\xi$$, a rescaling $$\mathbf{r} \rightarrow b\mathbf{r}$$ will change the correlation length accordingly. If, however, the correlation function is algebraic, rescaling will not change the proportionality. This behavior is a manifestation of the fact that the system is _scale invariant_ at criticality – a conclusion that will arise in the renormalization theory: the critical point is a fixed point of the rescaling, i.e. "renormalization", transform. To put it more explicitly, an Ising lattice at the critical point is an example of a _fractal_ structure.



### Ising correlation function

Next we will show that the Ising correlation function has exactly these properties and mathematical forms we are describing above.

There are two ways to solve for the correlation function of the Ising model: directly solving a PDE arising from the variational principle, or using renormalization in Fourier space, which is covered in the notes on Gaussian models. Here we focus on the first method.

First we use the _fluctuation–response theorem_ to convert the problem of solving for the correlation function to a different problem.

>   Let the magnetic field be a perturbation at origin $$h(\mathbf{r})=h \delta(\mathbf{r})$$, then
>
>   $$ \frac{d}{dh} \langle m(\mathbf{r})\rangle\big\vert_{h=0}=-\beta g(r)$$

This can be proved by explicitly writing the L.H.S. according to the usual $$\frac{\int me^{-\beta H} Dm}{\int e^{-\beta H}Dm} $$, pluggin in $$H=H_0+\int h(\mathbf{r})m(\mathbf{r})d^d \mathbf{r}=H_0+hm(0)$$ and switching differentiation and integration, as we always do in statistical mechanics.

Now our problem becomes to obtain this $$\left<m(\mathbf{r})\right>\_h$$: a function depending on the perturbation $$h$$. Then we will have $$g(r)=-k_B T \frac{d}{dh} \left<m(\mathbf{r})\right>\_{h=0}$$.

Next, we try approximate this thing, using the _saddle point approximation_:

>   $$\int e^{-\beta H} Dm \approx e^{-\beta H}\big\vert_{m(\mathbf{r})=m_\text{saddle}(\mathbf{r})}$$
>
>   where $$m_\text{saddle}(\mathbf{r})$$ is the function that maximizes $$H$$ among all possible $$m(\mathbf{r})$$.

This means $$\left<m(\mathbf{r})\right>\approx m_\text{saddle}(\mathbf{r})$$.

Naturally, we use the variational principle to find the maximum value of the functional $$H$$: $$H(m_\text{saddle}+\delta m)-H(m_\text{saddle})=0$$ for any $$\delta m(\mathbf{r})$$ to the first order.

This variational equation is a PDE of $$m(\mathbf{r})$$:

$$
-2k\nabla^2 m + 2r_0 m+4um^3+h\delta(\mathbf{r})=0
$$

The solution is $$m_\text{saddle}$$. 

When $$h=0$$, the solution to this PDE is just $$m(\mathbf{r})=m_0$$, $$m_0$$ being still the average spin in Landau theory. So we write $$m(\mathbf{r})=m_0+h\phi(\mathbf{r})$$. This way we separate the average and perturbed fluctuations around that average. Also, we now have $$g(r)\propto \phi(r)$$.

Plugging this into the PDE, we have two Helmholtz equations of $$\phi(\mathbf{r})$$ (depending on the sign of $$r_0$$, i.e. $$T-T_c$$). Their solutions are known to be

$$
g(r) \propto \phi (r)\propto\frac{e^{-\frac{r}{\xi}}}{r^{d-2}}, \quad \text{for } r \ll \xi
$$

where $$\xi^2 =k/r_0$$ is known from the coefficients of this Helmholtz equation. This is exactly in accordance with the forms of correlation functions above: usually the exponential decay dominates, but at criticality $$\xi \propto r_0^{-1/2}$$ diverges and $$\exp(-r/\xi)=1$$ so $$g(r)$$ is algebraic.

### Critical exponents $$\nu,\eta$$

$$\xi \propto t^{-\nu}$$

$$g(r) \propto \frac{1}{r^{d-2+\eta}}$$ 

Since we already have the solution of $$g(r)$$, the rest is easy. $$\xi \propto t^{-1/2}$$ so $$\nu=1/2$$ and at the critical point $$g(r) \propto 1/r^{d-2}$$ so $$\eta=0$$.

### Ginzburg criterion

What is the crucial approximation we made in MFA and Landau theory? – We assumed spins don't fluctuate very far from the global average $$m_0$$, and thus discarded the terms of order $$\delta m^2$$ compared to $$m_0^2$$. We need to know if this approximation is valid, i.e. whether we have

$$
\frac{ \langle \delta m ^2\rangle} {m_0^2} \ll 1
$$

This is the **Ginzburg criterion**. 

$$
\langle\delta m(\mathbf{r})^2\rangle = \left<m(0)m(r)\right>-\left<m(0)\right>\left<m(r)\right>=g(r)
$$

We know that $$g(r) \rightarrow 0$$ outside $$\xi$$, so 

$$
\frac{ \langle \delta m ^2\rangle} {m_0^2} \approx \frac{\int_{r<\xi} d^d \mathbf{r} g(r)}{\int_{r<\xi} d^d \mathbf{r}m_0^2}\propto \frac{\xi^2}{m_0^2\xi^d}
$$

and then

$$
\frac{\xi^{2-d}}{m_0^2}\propto \frac{t^{\frac{d-2}{2}}}{t}=t^{\frac{d-4}{2}}
$$

Now we see why MFA/Landau fails for lower than 4 dimensions: only when $$d\ge 4$$ will the fluctuation across space be negligible as $$t\rightarrow 0$$.