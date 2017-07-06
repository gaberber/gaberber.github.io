---
layout: post
title:  "Quantum dot charge readout baby steps"
date:   2017-07-06 15:59:00
published: false
---

The three most common readout methods:

-   __DC SET/QPC__. The idea is simple. A quantum dot in proximity to a SET or QPC is effectively another "gate" that controls the SET/QPC conductance: adding more electrons to the quantum dot is equivalent to applying a (slightly) more negative gate voltage to a gate near the SET/QPC. Apparently this DC sensor is the most sensitive when it's configured to be at the point where $$\partial G/\partial V_\text{gate}$$ is maximized, _i.e._ at the steepest point between two conductance plateaux for a QPC or between a Coulomb oscillation peak and a valley for a SET. Literature: 
-   __RF SET/QPC__. The readout principle is the same as above, whereas the conductance of the SET/QPC is not directly measured via DC transport (current/voltage) but using an RF resonator. We treat the sensor QPC/SET as a variable $$R$$ and put it in a $$RLC$$ resonator. 
-   __RF dispersive gate sensing__. Literature: [Karl Petersson, charge and spin readout of a double dot](http://pubs.acs.org/doi/abs/10.1021/nl100663w) and 


