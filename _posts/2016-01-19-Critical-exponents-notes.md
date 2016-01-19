---
layout: post
title:  "Statistical Mechanics Notes: Critial Exponents"
date:   2016-01-19 21:02:00
---



# Critical exponents and renormalization

Reduced temperature:

$$t=\frac{T-T_c}{T_c}$$

### For the Ising model:

Specific free energy $f(h,T)=F(h,T)/N$, $F(h,T)=-k_B T \ln Z$.

Order parameter: $m$ (magnetization).

Specific heat: 

$$C \propto \frac{\partial^2 f}{\partial T^2}$$

Source magnetic field: $h$.

Susceptibility: 

$$\chi = \frac{\partial m}{\partial h}$$

Correlation length: $\xi$

Spatial dimension: $d$

| Greek letter | Definition                               |
| ------------ | ---------------------------------------- |
| $\alpha$     | $C \propto t^{-\alpha}$                  |
| $\beta$      | $m\propto \|t\|^{\beta}$                 |
| $\gamma$     | $\chi \propto t^{-\gamma}$               |
| $\delta$     | $m\propto h^{-\delta}$                   |
| $\nu$        | $\xi=t^{-\nu}$                           |
| $\eta$       | $\langle m(0)m(\mathbf{r})\rangle\propto r^{-d+2-\eta}$ |

### Scaling laws:

$$ \alpha + 2\beta + \gamma = 2$$

$$ \gamma = \beta (\delta -1)$$

$$\frac{\gamma}{\nu}=2-\eta$$

$$2-\alpha=d\nu$$

Among these 6 critical exponents, only 2 are free (we have 4 constraints).

### Scaling dimensions

If we perform a renormalization transform, the parameters in the Hamiltonian change from $J,K,h,\dots$ to $J',K',h',\dots$. We can write out this mathematical relation between these two sets of parameters and Taylor expand it around the fixed (critical) point:

$$
\left[\begin{matrix}\Delta J' \\ \Delta K' \\ \Delta h'\end{matrix}\right]=A \left[\begin{matrix}\Delta J \\ \Delta K \\ \Delta h\end{matrix}\right]
$$

and then diagonalize $A$.

Among all the eigenvalues and eigenvectors of $A$, some $\lambda_i>1$ and thus a little deviation from the fixed point along the direction of this eigenvector will be enlarged after each iteration of renormalization transform. These are called *relevant* eigenvalues. Some $\lambda_i <1$ and deviation from the fixed point along this direction will be shrinked back to it. These are called *irrelevant*. Those $\lambda_i=1$ are called *marginal*.

Each RG transformation changes the lattice constant from $a$ to $la$, and thus we write each eigenvalue of $A$ as $\lambda_i=l^{z_i}$. These $z_i$'s are called **scaling dimensions**. A scaling dimension is **relevant** if it is positive, since we always have $l>1$.

### Homogeneity 

How do we obtain the relationship between the scaling dimensions and critical exponents? By arguments of homogeneity, the most important ones of which are the physical observations that

* after each RG transform, the correlation length $\xi(J',K')=\xi(J,K)/l$ (because if we use coarse grains or decimate intermediate lattice sites, the absolute correlation length remains the same but under the new model with new parameters it should be measured in the new lattice constant $la$);
* and the unit free energy $f=F/N$ becomes $f(J',K')=l^d f(J,K)$ (because the partition function remains the same for the old and new models and thus a simple relation between the old and new numbers of sites lead to this conclusion).

Starting from these two relations, we can use some tricks (by starting from a point very close to the fixed point and performing the RG transformations many times so that the component along the irrelevant eigenvector shrinks back to 0 and the relevant component becomes 1) to extract the proportionality between $\xi, f$ (and thus $C \propto T \partial^2 f/\partial T^2$) and the component along the relevant eigenvector. We can identify this component to be proportional to $t\propto |T-T_c|$, and thus obtain these relations between scaling dimensions and critical exponents and those scaling laws above.