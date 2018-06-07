# Limit laws


 $\lim_{n \to \infty} [a_n] = L \wedge \lim_{m \to \infty} [b_m] = M$ 
 
## mulitplication 
* $\lim ab_n = \lim a \times \lim b$

### Proof 
** Part 1
* $|a_n b_m - LM|$ 
* $= |a_n b_m - b_mL + b_mL - LM|$
* $= |b_m (a_n-L) + L(b_m - M)|$
* $\leq |b_m(a_n - L)| + |L(b_m-M)|$
* $= |b_m||a_n-L| + |L||b_m - M|$
* $\leq |b_m|\epsilon_1 + |L| \epsilon_2$
    +  deffine $epsilon_2 := \frac{\epsilon}{|L|$
* $\leq |b_m|\epsilon_1 + \epsilon$

** Part 2
* $|b_m|\epsilon_1$
* $=|b_m -M +M| \epsilon_1$
* $\leq |b_m - M|\epsilon_1 + |M|\epsilon_1$
