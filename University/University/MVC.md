# Prerequisits

## Common integrates

$$\frac{d}{dx}\tan(x) = \sec^2 x$$

$$\int u f'(x^2)=\frac{f(x^2)}{2}$$

$$\int x\sqrt{x^2 + 1}=\frac{1}{3}(t^2+1)^{\frac{3}{2}}$$ 

**Integration of $sec^3{\theta}$**
use inegration by part
$$u=\sec \quad v'=sec^2 \quad u' = \sec\tan \quad v = tan$$

$$\int{sec^3}=\sec \tan - \int{\sec \tan^2} = \sec\tan - \int \sec^3 -\sec^2$$
solveing for $\int \sec^3$

$$2\int sec^3= \sec \tan + \tan$$


**Integration of $\sqrt{ax^2 + b}$**
$$=\int \sqrt{b}\sqrt{\sqrt{ \left( \frac{a}{b}x \right)^2+1}}$$
$$\frac{a}{b}x=\tan{\theta} \quad  dx = \sqrt{\frac{b}{a}} \sec^2{\theta}$$

$$=\frac{b}{\sqrt{a}} \int \sec^3{x} = \frac{b}{2 \sqrt{a}}\left( sec tan + sec\right)$$

## Intergration by part

$$\int uv' = uv- \int v'u$$

## Integrate of $\sqrt{ax^2 + b}$
# Scalar path integrals

Definition:
	$$\int_{\Gamma} f ds = \int f(\gamma(t) || \gamma '(t) || dt$$

where $\Gamma$ is a curve parameterized by $\gamma(t)$  where t is on the interval [a,b] and f is a real valued function defined on $\Gammma$.

**The scalar path integral does not depend on the orientation of the paramiterization**


***

# Greens Theorem

$$\int\int_D \left(\frac{\partial{Q}}{\partial{x}} + \frac{\partial{P}}{\partial{y}}\right) = \int_{\partial{D}} P dx + Q dy$$

Proof

## Lemma 1
For the function is bounded at the top and bottom

**Very important** 
\int_{\Gamma} v \dr = \int + Gamma P dx and Q dy

$$\int_\partial{D} \begin{pmatrix} f \\ 0 \end{pmatrix} \cdot dr =- \int \int_D \frac{\partial{f}}{\partial{y}}dydx$$
Starting with the right hand side.
* $\int_a^b \int_{y=\alpha{x}}^{y=\beta{x}} -\frac{\partial{M}}\partial{y}dydx$
* $=\int_a^b M(x,\alpha(x)) - M(x,\beta(x))dx$
* $=\int_a^b M(t, \alpha(t)) - \int_a ^b M(t,(b\beta(t)))dt$

which is the integral around the perimiter

This is by definition 
## Lemma 2

For function bounded on both sides

$$\int_\partial{D} \begin{pmatrix} 0 \\ f \end{pmatrix} \cdot dr = \int \int_D \frac{\partial{f}}{\partial{x}}dxdy$$

## Important result

Let $h(t) = v(r(t)) \to h'(t) = \nabla v r't$

Deparameterizing one side

$\int_{\Gamma} \cdot dr = \int(h(t))dt$


then use the fundemetal theorem f calculas

# Useful coodinate systems.

$$\int \int \int_B f(x,y,z)dxdydz = \int\int\int_B f(T(u,v,w)) det(T'(u,v,w)|dudvdz$$
## Spherical coordinate systems

u radius.
v is angle from z axis
w is angle from x axis

**ONe of the angles must only go up to pi**

* $T = \begin{pmatrix} u \sin(v) \cos(w) \\ u \sin(v)\sin(w) \\ u cos(v))$
* Determniant = r^2 sin v **Where v is the angle which onoly goes up to pi**

* 
