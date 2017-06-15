---
layout: post
title:  "Renormalization notes"
date:   2016-01-24 
---

## Critical exponents and renormalization

Reduced temperature:

$$
t=\frac{T-T_c}{T_c}
$$

### For the Ising model:

Specific free energy $$f(h,T)=F(h,T)/N$$, $$F(h,T)=-k_B T \ln Z$$.

Order parameter: $$m$$ (magnetization).

Specific heat: 

$$C \propto \frac{\partial^2 f}{\partial T^2}$$

Source magnetic field: $$h$$.

Susceptibility: 

$$\chi = \frac{\partial m}{\partial h}$$

Correlation length: $$\xi$$

Spatial dimension: $$d$$

| Greek letter | Definition                               |
| ------------ | ---------------------------------------- |
| $$\alpha$$   | $$C \propto t^{-\alpha}$$                |
| $$\beta$$    | $$m\propto (-t)^\beta$$                  |
| $$\gamma$$   | $$\chi \propto t^{-\gamma}$$             |
| $$\delta$$   | $$m\propto h^{-\delta}$$                 |
| $$\nu$$      | $$\xi=t^{-\nu}$$                         |
| $$\eta$$     | $$\langle m(0)m(\mathbf{r})\rangle\propto r^{-d+2-\eta}$$ |

### Scaling laws:

$$
\alpha + 2\beta + \gamma = 2
$$

$$
\gamma = \beta (\delta -1)
$$

$$
\frac{\gamma}{\nu}=2-\eta
$$

$$
2-\alpha=d\nu
$$

Among these 6 critical exponents, only 2 are free (we have 4 constraints).

### Scaling dimensions

If we perform a renormalization transform, the parameters in the Hamiltonian change from $$J,K,h,\cdots$$ to $$J',K',h',\cdots$$. We can write out this mathematical relation between these two sets of parameters and Taylor expand it around the fixed (critical) point:

$$
\left[\begin{matrix}\Delta J' \\ \Delta K' \\ \Delta h'\end{matrix}\right]=A \left[\begin{matrix}\Delta J \\ \Delta K \\ \Delta h\end{matrix}\right]
$$

and then diagonalize $$A$$.

Among all the eigenvalues and eigenvectors of $$A$$, some $$\lambda_i>1$$ and thus a little deviation from the fixed point along the direction of this eigenvector will be enlarged after each iteration of renormalization transform. These are called *relevant* eigenvalues. Some $$\lambda_i <1$$ and deviation from the fixed point along this direction will be shrinked back to it. These are called *irrelevant*. Those $$\lambda_i=1$$ are called *marginal*.

Each RG transformation changes the lattice constant from $$a$$ to $$la$$, and thus we write each eigenvalue of $$A$$ as $$\lambda_i=l^{z_i}$$. These $$z_i$$'s are called **scaling dimensions**. A scaling dimension is **relevant** if it is positive, since we always have $$l>1$$.

On the flow diagram, each normalization takes us farther away from the critical point along the _relevant_ eigenvector direction (the critical point is a _repelling_ fixed point along this direction) and brings us closer to the critical point along the _irrelevant_ eigenvector direction (the critical point is an _attractive_ fixed point along this direction). As for the _marginal_ case,  the fixed point lies on a line of critical points – a _critical line_. 

![flow diagram](http://gaberber.github.io/img/flow-diagram.png)

### Homogeneity

How do we obtain the relationship between the scaling dimensions and critical exponents? By arguments of homogeneity, the most important ones of which are the physical observations that

*   after each RG transform, the correlation length $$\xi(J',K')=\xi(J,K)/l$$ (because if we use coarse grains or decimate intermediate lattice sites, the absolute correlation length remains the same but under the new model with new parameters it should be measured in the new lattice constant $$la$$);
*   and the unit free energy $$f=F/N$$ becomes $$f(J',K')=l^d f(J,K)$$ (because the partition function remains the same for the old and new models and thus a simple relation between the old and new numbers of sites lead to this conclusion).

Furthermore, since we have diagonalized the transformation matrix $$A$$, the matrix $$A^n$$ (i.e. applying the renormalization transformation for $$n$$ times) is still diagonal and has eigenvalues $$\lambda_i(l^n)=\lambda_i^n(l)$$.

### Use renormalization to obtain ritical exponents

Starting from these homogeneity relations, we can use some tricks (by starting from a point very close to the fixed point and performing the RG transformations many times so that the component along the irrelevant eigenvector shrinks back to 0 and the relevant component becomes 1) to show that 

$$
\xi(l^{ny}s,l^{nz}t)=\frac{\xi(s,t)}{l^n}
$$

and then 

$$
\xi(s,t)\propto t^{-\frac{1}{z}}\xi(0,1)
$$

$$s, t$$ are the component of $$[\Delta J, \Delta K]$$ in the shrinking eigenvector and growing eigenvector directions, respectively. $$y, z$$ are their respective scaling dimensions. $$y$$ is irrelevant and $$z$$ is relevant. From the flow diagram, we recognize this $$t$$ here to be proportional to our usual $$t$$, the reduced critical temperature $$(T-T_c)/T_c$$: $$\hat{s}$$ is the shrinking eigenvector because the stability line has the critical point as its _stable fixed point_, i.e. each iteration ends there, while $$\hat{t}$$ is along the perpendicular direction and magnifies any deviation from the stability line – this is the same as $$J,K$$ going toward either the higher temperature or lower temperature direction. (See analysis on the flow diagram at the beginning in the notes.) Thus we have $$\xi\propto t^{-1/z}$$. This means 

$$
\nu=1/z
$$

Note that $$z$$ is a characterizing number that can be calculated from the renormalization transform procedure (by diagonalizing $$A$$). We have thus obtained our first critical exponent. From similar arguments, we can derive $$\beta=(d-v)/z$$ ($$v$$ is another relevant scaling dimension that's related to the magnetic field $$h$$) and then all the scaling laws above.



### Universality

Because only the relevant scaling dimensions determine the system's critical behavior, adding/removing/changing terms that only involve irrelevant scaling dimensions will not change the critical exponents, etc. at all. Thus a whole class of Hamiltonians having the same relevant terms (but different irrelevant terms) all exhibit the same critical behaviors. This phenomenon is called universality. These Hamiltonians belong to one _universality class_.