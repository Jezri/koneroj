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
