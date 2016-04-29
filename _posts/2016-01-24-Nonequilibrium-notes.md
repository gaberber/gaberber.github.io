---
layout: post
title:  "Notes for Advanced Statistical Mechanics: non-equilibrium"
date:   2016-01-24 
---

# Langevin equation

A Brownian motion can be described by the Langevin equation:

$$m\frac{dv}{dt}(t)=-\gamma v(t) + F(t) + R(t)$$

$\gamma$ is the familiar "damping" rate in the dynamic equation of oscillators. It represents a "dragging" force by the particles near it slowing it down. $R(t)$ is a "random kick" to the particle. It is a Gaussian random variable:

-   $\left<R(t)\right>=0$
-   $\left<R(t)R(t+\tau)\right>=q \delta(\tau)$
-   $P(R)=\frac{1}{\sqrt{2\pi\left<R^2\right>}}\exp\left(-\frac{R^2}{2\left<R^2\right>}\right)$

---

When $F=0$, the solution to the Langevin equation is 

$$ v(t)=v(0)e^{-\frac{\gamma t}{m}} + \frac{1}{m} \int_0^t e^{-\frac{\gamma(t-\tau)}{m}}R(\tau)d\tau$$

And the average value of the above expression is 

$$ \left<v(t)\right> =v(0)e^{-\frac{\gamma t}{m}}$$

The expectation value of $v^2(t)$ is 

$$ \left<v^2(t)\right> = v_0^2 e^{-\frac{2\gamma t}{m}}+\frac{q}{2\gamma m}\left(1-e^{-\frac{2\gamma t}{m}}\right)$$

For large $t$, it reduces to

$$ \left<v^2(\infty)\right> =\frac{q}{2\gamma m}$$

From the **equipartition** theorem we also know $\left<v^2\right>=k_B T/m$, so 

$$q=2\gamma k_B T$$

**Velocity autocorrelation**:

$$\left<v(t)v(t+\tau)\right> = \left<v^2(0)\right> e^{-\frac{\gamma |\tau|}{m}}$$

---

Position:

$$\left<x^2(t)\right>=2\left<v^2\right> \frac m\gamma \left[t+\frac m \gamma \left(e^{-\frac{\gamma t}{m}}-1\right)\right]$$

For large $t$, take the exponential term to be 0. Compare that result with the diffusion behavior $\left<x^2(t)\right>=2Dt$, we get the **Einstein relation**:

$$ D=\left<v^2\right> \frac m\gamma = \frac{k_B T}{\gamma}$$

---

**Fick's law**:

$$ j_\text{diff} = -D\nabla \rho (\mathbf{r},t)$$

$j_\text{diff}$ is the flux due to diffusion, and $\rho$ is the particle density. $D$ is the diffusion constant above.

When stationary, $\mathbf{v}=\mathbf{F}/\gamma$, thus the drift flux due to a driving force is

$$j_\text{drift}= \rho(\mathbf{r},t)\mathbf{v}(\mathbf{r},t) =\rho(\mathbf{r},t)\frac{\mathbf{F}(\mathbf{r},t)}{\gamma}$$

**Continuity equation**:

$$ \frac{\partial}{\partial t}\rho (\mathbf{r},t) +\nabla \cdot j_\text{total}(\mathbf{r},t)=0$$

When $F=0$, use the continuity equation and Fick's law to get the **diffusion equation**:

$$ \frac{\partial \rho}{\partial t} =\nabla \cdot (D\nabla \rho)$$

---

Fokker-Planck equation: $P\propto \rho$

$$\frac{\partial P}{\partial t}=\gamma v\frac{\partial P}{\partial v} + \gamma k_B T \frac{\partial^2 P}{\partial v^2}$$

Stationary condition $\partial P/\partial t=0$ will lead to the Maxwell distribution:

$$P\propto e^{-\frac{mv^2}{2k_B T}}$$

# Wiener-Kintchine theorem

$A(t)$ is a time-dependent random variable. $K(s)$ is the **autocorrelation function**, defined as

$$ K(s) \equiv \left<A(t)A(t+s)\right> = \lim_{T\rightarrow \infty} \frac{1}{T} \int_0^T A(t)A(t+s)dt$$

It has the property $K(s)=K(-s)$.

The Fourier transform of $A(t)$ is

$$\tilde{A} (\omega) = \frac{1}{\sqrt{T}}\int_0^T A(t)e^{i\omega t}dt$$

(from now on taking the limit $T\rightarrow \infty$ is implicitly assumed.)

The **spectral density** is defined as

$$ S(\omega)=\left<\tilde{A}(\omega) \tilde{A}^*(\omega) \right>$$

**Wiener-Kintchine theorem**: the autocorrelation and spectral density are Fourier transform pairs.

$$ S(\omega)=\int_{-\frac{T}{2}}^\frac{T}{2} K(s)e^{-i\omega s}ds \equiv \tilde{K}(\omega)$$


---

Apply it to the Langevin equation. Let $R(t)$ be a non-Gaussian random variable

$$\left<R(t_1)R(t_2)\right>=K_F(t_2-t_1)$$

Using the equipartition theorem we have

$$ \tilde{K}_F(0)=2\gamma k_B T$$

$$\left<v(0)v(t)\right>=\frac{k_B T}{m}e^{-\frac{\gamma |t|}{m}}$$

The power spectrum is then

$$\left<|v(\omega)|^2\right> = \frac{2k_B T}{\gamma}\frac{1}{1+\left(\frac{\omega m}{\gamma}\right)^2}$$
