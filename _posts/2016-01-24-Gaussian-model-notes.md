---
layout: post
title:  "Gaussian Model notes"
date:   2016-01-24 
---

## The Gaussian model

We have previously obtained the critical exponents in the Landau-Ginzburg model from solving variational equations directly. Now we will see that it is (in some sense) easier to do a Fourier transform on the (simplified) Landau-Ginzburg Hamiltonian and obtain the same results using renormalization. 

We will see that the renormalization procedure in this model is very easy. Another advantage is that by switching to Fourier space, we can turn the function integral $$\int D m(\mathbf{r})$$ –(continuously) infinitely many integrals – into a sum of integrals, because in Fourier space the $$\mathbf{k}$$'s are discrete. This is possible because $$m(\mathbf{r})$$ resides in a function space that's continuous/smooth enough, and doesn't actually have as many degrees of freedom as the number of $$\mathbf{r}$$'s (uncountable infinite).

### Real-space Hamiltonian

Ignoring the fourth-order term, the Landau-Ginzburg Hamiltonian is ($$d$$ is the dimension of the real-space system, $$r_0$$ is the constant factor parameter and not related to the position vector $$\mathbf{r}$$):

$$
\beta H=\int [(\nabla m(\mathbf{r}))^2+r_0m^2(\mathbf{r})]d^d \mathbf{r}
$$

Switch from a continuous $$\mathbf{r}$$ to a discrete lattice subscripted by $$i,j,\cdots$$

Let $$m_i$$ be a general order parameter on the lattice site denoted by $$i$$.

$$m_i$$ can be visualized as the height of the stack of particles at site $$i$$. The Landau-Ginzburg Hamiltonian can be translated into its equivalent in the discrete lattice:



$$
\beta H = \frac{J}{2} \sum_{<i,j>}(m_i-m_j)^2+r_0 m_i^2
$$

(Next we can take $$J$$ to be 1 because of the irrelevance of a global prefactor multiplying both $$J$$ and $$r_0$$. In this case, it is exactly equivalent to the continuous Hamiltonian.)

This type of Hamiltonian can be interpreted as: 1) having a penalty for the heights $$m_i$$ that take on different values than 0 (the $$m_i^2$$ terms); and 2) having a penalty for neighboring heights taking on different values (the gradient or difference squared terms). Thus the lowest energy state is when every $$m_i$$ is equal to 0.

### Fourier transform

Next, perform a discrete Fourier transform on $$\{m_i\}$$: ($$N$$ is the number of sites on the lattice)

$$
m_i=\frac{1}{\sqrt{N}}\sum_{\mathbf{q}}e^{i\mathbf{q}\cdot \mathbf{r}_i}m_\mathbf{q}
$$

It is easy to show that $$m_{-\mathbf{q}}=m_{\mathbf{q}}^*$$

Explicitly doing the Fourier transform on each term in the discrete Landau-Ginzburg type Hamiltonian gives us

$$
\beta H=\frac12 \sum_{\mathbf{q}\in \text{BZ}}(q^2+r_0)m_{\mathbf{q}}m_{\mathbf{-q}}
$$

where $$q=\vert \mathbf{q}\vert $$.

The first Brillouin Zone is $$q_x,q_y,q_z,\cdots \in [-\pi/a,\pi/a]$$

----

The Gaussian model has only 1 relevant parameter: $$r_0$$.


### Partition function: integrating in $$k$$ space

If $$m_\mathbf{q}$$ and $$m_{-\mathbf{q}}$$ are truly independent, the partition function is given by (note that $$m_\mathbf{q}$$ is complex and thus each integral is over the entire $$\mathbb{C}$$ plane)

$$
Z=\int_{\mathbb{C}^N} \prod_{\mathbf{q}\in \text{BZ}} d^N m_{\mathbf{q}} e^{-\frac12 \sum_{\mathbf{q}}(q^2+r_0)m_\mathbf{q}m_{-\mathbf{q}}}
$$

and we can then factorize the entire partition function into

$$
Z=\prod_{\mathbf{q} \in \text{BZ}}\int_{\mathbb{C}} d m_{\mathbf{q}} e^{-\frac12 (q^2+r_0)m_\mathbf{q}m_{-\mathbf{q}}}
$$

However, $$m_{-\mathbf{q}}=m_\mathbf{q}^*$$ and they are not independent. If we choose a value for $$m_\mathbf{q}$$, we have already fixed $$m_{-\mathbf{q}}$$, too. Thus, we break the Brillouin zone into three parts: $$\text{BZ}=\text{BZ}^+ \cup \text{BZ}^- \cup \{0\}$$, and only perform the integration for $$\mathbf{q}\in \text{BZ}^+$$ and $$\mathbf{q}=0$$. That is,

$$
Z=\int_{-\infty}^{\infty} dm_0e^{\frac12 r_0 m_0^2} \times \prod_{\mathbf{q} \in \text{BZ}^+}\int_{\mathbb{C}} d m_{\mathbf{q}} e^{- (q^2+r_0)m_\mathbf{q}m_{-\mathbf{q}}}
$$

note that 1) since $$m_0$$ must be real from the conjugate relation, and 2) we no longer integrate over the possibilities of $$m_{-\mathbf{q}}$$ but their contribution to $$e^{-\beta H}$$ is still there, and thus the $$1/2$$ in front of the Hamiltonian in the last expression has disappeared because they are grouped together with $$m_\mathbf{q}$$ (the Hamiltonian is invariant under $$\mathbf{q}\rightarrow -\mathbf{q}$$).

Notice that $$m_\mathbf{q}m_{-\mathbf{q}}=\vert m_\mathbf{q}\vert ^2$$, and that $$\int_\mathbb{C} dz=\int_{-\infty}^\infty \int_{-\infty}^\infty  dxdy=\int_0^\infty 2\pi RdR$$ for integrands that only depend on $$R=\vert z\vert $$, where $$z=x+iy=Re^{i\theta}, x,y,R,\theta\in \mathbb{R}$$, so each integral can be easily evaluated. They are Gaussian integrals (either on the real axis or on the 2D Gaussian integral on the entire plane using polar coordinates, i.e. the method we use to evaluate the 1D Gaussian integral).

Thus the partition function is calculated to be 

$$
Z=\prod_{\mathbf{q} \in\text{BZ}}\left(\frac{\pi}{r_0+q^2}\right)^{\frac12}
$$

and therefore

$$
\ln Z=\frac12 \int_{\mathbf{q} \in \text{BZ}}\ln \left(\frac{\pi}{r_0+q^2}\right) d^d\mathbf{q}
$$
Again, $$d$$ is the dimension of the system.

### Correlation

From this, we can show that 

$$
\langle m_\mathbf{q}m_\mathbf{q'}\rangle = \frac{1}{q^2+r_0} \delta(\mathbf{q}+\mathbf{q'})
$$

from the definition of this quantity.

Then Fourier transform back into real space and we obtain 

$$
\langle m(\mathbf{r})m(\mathbf{r'})\rangle \propto  \frac{e^{-r/\xi}}{r^{d-2}}
$$

near criticality and thus know the critical exponent $$\eta=0$$, and from the expression of $$\xi$$ in the Landau Hamiltonian parameters we know $$\nu=\frac{1}{2}$$.

### Renormalization

The renormalization of the Gaussian model under $$k$$ space is very simple – just integrate over all the $$k$$ values between the strip (see graphs) and then re-map the $$k$$ inside the small square to the entire big square (first Brillouin zone) again. 

In real space, because of symmetry we must decimate (integrate over) a site between every two sites or perform a "coarse-grain" transform on every four sites. But here, we only need to integrate over a strip of $$\mathbf{k}$$'s because we have already separated the "fast-varying" and the "slow-varying" components in $$m$$. This is very similar to the JPEG compression idea: remove the outer high-frequency components in Fourier space.

The renormalization transformation on the only parameter $$r_0$$ is $$r_0'=l^2 r_0$$, and thus $$\nu=1/z=1/2$$. Again.

The other critical exponents then follow from the scaling relations.
