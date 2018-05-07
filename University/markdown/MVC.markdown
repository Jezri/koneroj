\newcommand{R}{\mathbb{R}}
\newcommand{\Partial}[1,2]{\frac{\partial{#1}}{\partial{#2}}}
# Linearity

A function f(x) is linear (in x) if f(ax +by ) = af(x) + bf(y) $\forall x,y \in a$ and $a,b$ scalars or real
* The curl disrabutes over the sum proof by linearity of partial derivates **The sum of two linear functions id linear**
* $\nabla \times (g\vec{F}) = (\nabla g)\times \vec{F} + g(\nabla \times \vec{F})$
* **g** $ \vec{F \times G} = ()\nabla \times \vec{F} )\cdot \vec{G}- (\nabla \times \vec{G})\cdot \vec{F}

* Show that $\nabla \cdot (g\nabla f) = (\nabla g) \cdot (\nabla f) + g\nabla ^2 f$ **Let $\nabla f = \vec{F}$
* Most preceding theorems are prooved of proceeding ones rather than from first principles.
* Revise definitions and properties of section 1.2 !!

# Second order partial derivatives with respect to multiple veriable

* Let $f:\mathbb{R}^n \to \mathbb{R}
* Than $\frac{\partial ^2f}{\partial k_x \partial x_j} \overbrace{mostly}{=} \frac{\partial ^2 f}{\partial x_k \partial x_j}$ **Problems arise for example when some of the limits don't exist**

    
# Chain Rule

Partially derive in terms of x_1 to x_n before pluging in x = g(t)
Onfriday

Use l'hoppital for dirrectional derivatives

# Tangents and normals

## cuts

We get cross sections 1 dimension less than the perant function
$S \{} \vec{x} \in \mathbb{R}^n : f(x) = c \}$ this can give curves or filled spaces
and 

* $\vec{x} \in S is a regular point if $\grad{F} (\vec{x}) \neq )$
* $ is a singular point if $\grad{f}(\vec{x})=0;
If grad is a tangent zero grads make things wierd.

* Let S be a hyper surface in $\mathbb{R}^n. than n is a noraml to s at x_0 is $\forall \gamma :\mathbb{R} \to \mathbb{R}^n$ such that
    +  $\gamma(t) \in S$
    +  $\gamma(t_0) = x_0 for some t_0 in \mathbb{R}$
    +  $\vec{n} \cdot \gamma'(t) = 0$

$\grad{d}(\vec{x_0}) \cdot \vec{\gamma}'(t_0) = 0$
  Every directional derivative is zero.

Proof $\forall \gamma R \to R^n | gamma t_0 = x_0 for some t_0 \in R$
and gamma(t) \in S forall t in R we have f(gamma t = c), so that
(f (\gamma  t )' = 0)
\Rightarrow = f'(gamma t) gamma'(t) = 0
\Rughtarrow = \grad f (gamma t) \cdot gamma't =0

in paticular at t0: \gamma(t_0) = x_a and
$(\grad{f}(gamma(t0)) = \grad{f_0}, \grad{f}(x_0) \cdot \gamma(t_0) = 0$

1.5.4
The set of tangent vectors to a hyper surface x at x zero is the set t at x_0 is all tangent vectors of cureve on the surface that are going through x0

# Green's theorems

Let D be a region in $\R^2$ with a positive orientated boundry $\partial D$ Then for $F:\R^2 \to R^2$ 

$$\intergral \intergral_D \right( \Partial{F_2}{x_1}-\Partial{F_1}{x_2}dx_1dx_2 = \int_{\partial D} F \cdot dx = \int_{\partial D} (F_1dx + F_2dy)$$

Lemma 2.6.3 Let D = \right{(x,y): p(x) \leq y \leq q(x) x \in [a,b]} with positive oriented $\oartial DR

proofL
partial F p r_1 + r)2 + r_3 + r_4
$\int over D = intergral over r_1 \cdots integral over r_4$
r_1 : line from (b,p(b) \to (b,q(b)))$
r_1(t) = (b ,p(b)) + t(b,q(b))-(b,p(b)) t \in [0,1]$
$d r_1$ = [(b, q(b))-(b,p(b))]dt$
$ \int_r_1 \begin{\pmatrix}(f \\ 0) \cdot dr = \int_0 ^ 1 \begin{pmatirc f \\0\end{pmatrix}}$

r_3 : \int_r_3 \begin{pmatrix} f \\0 \cdot d_r = 0
Read over the parameterization of the curves

## Full proof

* Envolves 2 lemmas
* Proof of greens theorem type 3 regions which can be written with the bounds ini y or the bounds in x (each lemma relates to one)
* $\int_{\partail D} \vec{F} = partial of F1dx + F2dy = integral partial x + intergral of partial D F2 dy$


# Calculating surface area.

paraboloid $x^2 +y^2 = az$ $a>0, 0 \leq z \leq h$

Parametarization 

$r(u,v) = \begin{pmatix} v cosu \\ v sin u \\ \frac{v^2}a \end{pmatrix} u \in [0, 2\pi]$ This result in double 

**Find the area of a triangle with corners $\vec{a} = (0,0,0), b = (1,0,2) a_nd c = (0,2,6)$ using surface integrals.**

paramterize the surface

This is a plane characterised by (b -a) \cross (c-a) = $\begin{pmatix} -4 \\ -6 \\ 2 \end{pmatrix}$
paramterization
$r(u,v) = \begin{pmatix} u \\v \\ 2u+35\end{pmatrix}$

$u \in [0,1], v \in [0,2]$

$\frac{(f-a) \cdot (b-a)}{||b-a||} \leq ||b-a||$
$\frac{f-a \cdot (c-a)}{||c-a)|| \leq ||c-a||$

v must be restricted to compensate for u

_So we must find a new parametarization_

$r(uv) = \vec[a] + u(b-a) + v(c-a) \quad u \in [0,1], v \in [0,1-u]

= \begin{pmatrix} u \\2u \\2u + 6v

Surface area = \integral \integral_S 1 ds
= \integral 0 1 \integral 0 1 || (1 )
