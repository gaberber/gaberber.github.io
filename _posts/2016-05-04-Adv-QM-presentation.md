---
layout: post
title:  "Adv QM presentation formulae"
date:   2016-05-04 19:37:00
---

Advanced quantum mechanics: a path to path integral

$$\newcommand{\ket}[1]{| #1 \rangle}$$

$$\newcommand{\bra}[1]{\langle #1 |}$$

$$
\hat{U}(t_f, t_0) = \lim_{dt\rightarrow 0} \prod_i \hat{U}(t_i + dt, t_i)
$$

$$
\hat{1} = \int \frac{d\lambda d\lambda^*}{\pi} \ket{\Psi_\lambda} \bra{\Psi_\lambda}
$$

$$
\ket{\Psi_\lambda} = e^{-\frac{|\lambda|^2}{2}} \sum_n \frac{\lambda^n}{\sqrt{n!}} \ket{n}
$$

$$
\begin{aligned}
\hat{U}(t_f, t_0) &= \lim_{dt\rightarrow 0} \prod_i \hat{U}(t_i + dt, t_i)  \int \frac{d\lambda d\lambda^*}{\pi} \ket{\Psi_\lambda} \bra{\Psi_\lambda} \\
&= \lim_{dt\rightarrow 0} \prod_i \left[ \int \frac{d\lambda(t_i) d\lambda^*(t_i)}{\pi} \left( \hat{U}(t_i + dt, t_i)\ket{\Psi_\lambda} \bra{\Psi_\lambda} \right) \right] \\
&= \lim_{dt\rightarrow 0} \int \prod_i \frac{d\lambda(t_i) d\lambda^*(t_i)}{\pi} \big[ \ket{\Psi_\lambda(t_f)} \cdots \bra{\Psi_{\lambda(t_{i+1}+dt)}} \hat{U}(t_{i+1}+dt, t_{i+1}) \ket{\Psi_{\lambda(t_{i+1})}} \\
&\quad \bra{\Psi_{\lambda(t_{i}+dt)}} \hat{U}(t_{i}+dt, t_{i}) \ket{\Psi_{\lambda(t_i)}} \cdots \bra{\Psi_{\lambda(t_0)}} \big] \\
&= \lim_{dt\rightarrow 0} \int \prod_i \frac{d\lambda(t_i) d\lambda^*(t_i)}{\pi} \bra{\Psi_{\lambda(t_i+dt)}} \hat{U}(t_i+dt, t_i) \ket{\Psi_{\lambda(t_i)}}  \ket{\Psi_{\lambda(t_f)}} \bra{\Psi_{\lambda(t_0)}}
\end{aligned}
$$

---


$$
\mathcal{L}(t) \equiv \hbar \omega \lambda^*(t)\lambda(t) + \frac{i\hbar}{2} [\dot{\lambda}^*(t)\lambda(t) - \lambda^*(t) \dot{\lambda}(t)]
$$

$$
\therefore \mathcal{S}=\int_{t_0}^{t_f} \mathcal{L}(t) dt
$$

$$
\bra{\Psi_{\lambda(t_i+dt)}} \hat{U}(t_i+dt, t_i) \ket{\Psi_{\lambda(t_i)}} = e^{-\frac{i}{\hbar} dt \mathcal{L}(t_i)}
$$

$$
\prod_i \bra{\Psi_{\lambda(t_i+dt)}} \hat{U}(t_i+dt, t_i) \ket{\Psi_{\lambda(t_i)}} = e^{-\frac{i}{\hbar} \sum_i dt \mathcal{L}(t_i)}
$$

$$
\begin{aligned}
\hat{U}(t_f, t_0) &= \lim_{dt\rightarrow 0} \int \prod_i \frac{d\lambda(t_i) d\lambda^*(t_i)}{\pi} \bra{\Psi_{\lambda(t_i+dt)}} \hat{U}(t_i+dt, t_i) \ket{\Psi_{\lambda(t_i)}} \ket{\Psi_{\lambda(t_f)}}  \bra{\Psi_{\lambda(t_0)}} \\
&= \lim_{dt\rightarrow 0} \int \prod_i \frac{d\lambda(t_i) d\lambda^*(t_i)}{\pi} e^{-\frac{i}{\hbar} \sum_i dt \mathcal{L}(t_i)} \ket{\Psi_{\lambda(t_f)}} \bra{\Psi_{\lambda(t_0)}} \\
&= \int \prod_t \frac{d\lambda(t) d\lambda^*(t)}{\pi} e^{-\frac{i}{\hbar} \int_{t_0}^{t_f} dt \mathcal{L}(t)} \ket{\Psi_{\lambda(t_f)}} \bra{\Psi_{\lambda(t_0)}}  \\
&= \int \mathcal{D}\{\lambda(t)\} e^{-\frac{i}{\hbar} \mathcal{S}(\lambda)} \ket{\Psi_{\lambda(t_f)}} \bra{\Psi_{\lambda(t_0)}} 
\end{aligned}
$$






