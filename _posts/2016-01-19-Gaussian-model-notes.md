---
layout: post
title:  "Statistical Mechanics Notes: The Gaussian Model"
date:   2016-01-19 21:02:00
---


# The Gaussian model

Landau-Ginzburg Hamiltonian ($d​$ is the dimension of the real-space system, $r_0​$ is the constant factor parameter and not related to the position vector $\mathbf{r}​$):

$$
\beta H=\int [(\nabla m(\mathbf{r}))^2+r_0m^2(\mathbf{r})]d^d \mathbf{r}
$$

Switch from a continuous $\mathbf{r}$ to a discrete lattice subscripted by $i,j,\dots$

Let $m_i$ be a general order parameter on the lattice site denoted by $i$.

$m_i$ can be visualized as the height of the stack of particles at site $i$. The Landau-Ginzburg Hamiltonian can be translated into its equivalent in the discrete lattice:



$$
\beta H = \frac{J}{2} \sum_{<i,j>}(m_i-m_j)^2+r_0 m_i^2
$$

(Next we can take $J$ to be zero because of the irrelevance of a global prefactor multiplying both $J$ and $r_0$. In this case, it is exactly equivalent to the continuous Hamiltonian.)

This type of Hamiltonian can be interpreted as: 1) having a penalty for the heights $m_i​$ that take on different values than 0 (the $m_i^2​$ terms); and 2) having a penalty for neighboring heights taking on different values (the gradient or difference squared terms). Thus the lowest energy state is when every $m_i​$ is equal to 0.

Next, perform a discrete Fourier transform on $\{m_i\}$: ($N$ is the number of sites on the lattice)

$$
m_i=\frac{1}{\sqrt{N}}\sum_{\mathbf{q}}e^{i\mathbf{q}\cdot \mathbf{r}_i}m_\mathbf{q}
$$

It is easy to show that $m_{-\mathbf{q}}=m_{\mathbf{q}}^*$

Explicitly doing the Fourier transform on each term in the discrete Landau-Ginzburg type Hamiltonian gives us

$$
\beta H=\frac12 \sum_{\mathbf{q}\in \text{BZ}}(q^2+r_0)m_{\mathbf{q}}m_{\mathbf{-q}}
$$

where $q=|\mathbf{q}|$.

The firstr Brillouin Zone is $q_x,q_y,q_z,\dots \in [-\pi/a,\pi/a]$

----

The Gaussian model has only 1 relevant parameter: $r_0$.

----

If $m_\mathbf{q}$ and $m_{-\mathbf{q}}$ are truly independent, the partition function is given by (note that $m_\mathbf{q}$ is complex and thus each integral is over the entire $\mathbb{C}$ plane)

$$
Z=\int_{\mathbb{C}^N} \prod_{\mathbf{q}\in \text{BZ}} d^N m_{\mathbf{q}} e^{-\frac12 \sum_{\mathbf{q}}(q^2+r_0)m_\mathbf{q}m_{-\mathbf{q}}}
$$

and we can then factorize the entire partition function into

$$
Z=\prod_{\mathbf{q} \in \text{BZ}}\int_{\mathbb{C}} d m_{\mathbf{q}} e^{-\frac12 (q^2+r_0)m_\mathbf{q}m_{-\mathbf{q}}}
$$

However, $m_{-\mathbf{q}}=m_\mathbf{q}^*$ and they are not independent. If we choose a value for $m_\mathbf{q}$, we have already fixed $m_{-\mathbf{q}}$, too. Thus, we break the Brillouin zone into three parts: $\text{BZ}=\text{BZ}^+ \cup \text{BZ}^- \cup \{0\}$, and only perform the integration for $\mathbf{q}\in \text{BZ}^+$ and $\mathbf{q}=0$. That is,

$$
Z=\int_{-\infty}^{\infty} dm_0e^{\frac12 r_0 m_0^2} \times \prod_{\mathbf{q} \in \text{BZ}^+}\int_{\mathbb{C}} d m_{\mathbf{q}} e^{- (q^2+r_0)m_\mathbf{q}m_{-\mathbf{q}}}
$$

note that 1) since $m_0$ must be real from the conjugate relation, and 2) we no longer integrate over the possibilities of $m_{-\mathbf{q}}$ but their contribution to $e^{-\beta H}$ is still there, and thus the $1/2$ in front of the Hamiltonian in the last expression has disappeared because they are grouped together with $m_\mathbf{q}$ (the Hamiltonian is invariant under $\mathbf{q}\rightarrow -\mathbf{q}$).

Notice that $m_\mathbf{q}m_{-\mathbf{q}}=|m_\mathbf{q}|^2$, and that $\int_\mathbb{C} dz=\int_{-\infty}^\infty \int_{-\infty}^\infty  dxdy=\int_0^\infty 2\pi RdR$ for integrands that only depend on $R=|z|$, where $z=x+iy=Re^{i\theta}, x,y,R,\theta\in \mathbb{R}$, so each integral can be easily evaluated. They are Gaussian integrals (either on the real axis or on the 2D Gaussian integral on the entire plane using polar coordinates, i.e. the method we use to evaluate the 1D Gaussian integral).

Thus the partition function is calculated to be 

$$
Z=\prod_{\mathbf{q} \in\text{BZ}}\left(\frac{2\pi}{r_0+q^2}\right)^{\frac12}
$$

and therefore

$$
\ln Z=\frac12 \int_{\mathbf{q} \in \text{BZ}}\ln \left(\frac{2\pi}{r_0+q^2}\right) d^d\mathbf{q}
$$
Again, $d$ is the dimension of the system.

---

From this, we can show that 

$$
\langle m_\mathbf{q}m_\mathbf{q'}\rangle = \frac{1}{q^2+r_0} \delta(\mathbf{q}+\mathbf{q'})
$$

from the definition of this quantity