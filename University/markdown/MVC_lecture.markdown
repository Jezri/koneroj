
Vector Analysis
=================
    Check sakia for proof of this thoerem


[Theorem]{.smallcaps} 1.1.4

Proof^[product rule]

> $F,G:\mathbb{R}^n \to \mathbb{R}^m , g:\mathbb{R}^n \to \mathbb{R}$
> 
> > #. $\vec{F}(\vec{x}) \cdot \vec{G}(\vec{x}) )' = \vec{F}^T(\vec{x}) \cdot \vec{G}'(\vec{x}) + \vec{G}^T(\vec{x}) \cdot \vec{F}'(\vec{x})$ Product rule (check with 1 by 1 matrix)
> > 
> > #. $(g(x) F(x))' = g(x)F'(x) + F(x) \cdot g(x)$

[Dirivatives of vector functions]{.smallcaps}

$\vec{F}(a+h) = \vec{F}(\vec{a})+\vec{F}'(a)\cdot h$ for small enough h^[from taylor expansion with small $|h|$ ]

  #. $F(x) = \begin{pmatrix} f_1(x) \\ f_2(x) \\ ... \\ f_n(x)\end{pmatrix}$
  #. $f_1(a+h) = f1(a1+h1, a_2+h_2)  + \frac{\partial{F}}{\partial{x_1}}(a_1 ,a_2+h_2 ,...., a_n + h_n) h_1 + O(h_1^2)$^[Taylor]

      Now use Tayloar around $h_2 O(2$) is ignored
  #. $F(a_1, a_2 a_3...a_n) + \frac{\partial {f_1}}{\partial{x_1}} (a1,a2,a3+h3... 1n)h1 + \frac{\partial{f_2}}{\partial{x_2}}(a1,a2, a3+h3, ... a_n + h_n )+ \frac{\partial{f_n}}{\partial{x_n}} (a1...an)hn$

$F(a+h) = [F1 (a+h) ...]^T = [f1(a) + f1(a) \cdot h ...]^t +O(h^2) = F(a) + F'(a)\cdot h$
$F(a) = [\\frac{\partial F1}\parital x_1 (a) ][h1, h2]^t$
Gradient 
: The gradient of a function $f:\mathbb{R}^n \to \mathbb{R}$ is written $\nabla$
  $$\nabla f = \begin{bmatrix} \end{bmatrix}\$$


