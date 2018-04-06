Introductory Analysis 
=======================
    Tut test next week!
    Sakia question must be handed in at tuts.
    
# Axioms of the reals
## Addition laws
A1 Associative Law 
: $a + (b + c) = (a + b) + c \quad \forall a,b,c \in \mathbb{R}$

A2 Commumatitive Las
: $a + b = b + a for all a, b \in \mathbb{R}$

A3 Zero
: There is a real number 0 such that $a+0 = a \forall a \in \mathbb{R}$

A4 Additive Inverse
: $\forall a \in \mathbb{R} \exists -a | a + (-a) = 0$
##


This week
-----------------------
Reals
  Last week did addition and multiplication
  $\mathb{R} +$ is a group
  $\mathbb{R} cdot$ is a group
  $\mathbb{R} + \codt$ is a field

#comparison
axioms
The trichotomy property of reals.
* $\forall$ reals exactly one is true
* $a > 0 \quad a = 0 \quad a < 0$
* $ if a >0 and b >0 than a + b >0$
* If a >0 and b 0 then ab >0


Let $r_1 r_2 \in \mathbb{r} then a is called larger than b written $r_1 > r_2$ if a -b > deffinition
  
  $ r_1 \geq b \Leftright a > b or a = b$
  $ a \leq b \Leftright a = b \or a < b$

Some proofs

b) a < b and b < c \to a < c transitivty[sort of]
> Proof
> > $b > a$ implease b-a \geq 0 i
> > $b -c \geq 0$ ii
> > i + ii (b-a) + c - b \geq 0
> > a - c \geq 0 (addition axioms)
> > $c \greq 0$

i) proof by contradiction
if a > 0 \Leftrightarrow a^-1 >0 an a < 0 \Leftrightarrow a^{-1} <0
> suppose a > 0
 proove a^{-1} >0 
suppose a > 0
so a \neq 0 by trichotomy property
by m3 a^-1 exist (becouse trichotomy meen not 0)
  if 1 over a is negative we get a contradiciton
  assume a^{-1} is negative or 0
  case 1 a^{-1} = 0
  1 = a \cdot a^{-1} =a \cdot 0 = 0$ contradction

  assume negative
  $1 = a a^{-1} < 0$ contraditicion

  So 1 over a is positive.

k 1 > 0
  a \neq 0 \to a^2 > 0
  use this to show 1 > 0
  
  install rxvt unicode
 

# Absolute value
definition
|r| = -x \forall x < 0
    = x \quad x > 0
$\infty \nin \mathbb{R}
$ a + b \leq | a +b $

|a| = 0 \Leftrightarrow if a = 0
* if |a| = 0 \to a = 0
* if a = 0 \to |a| = 0

first is by definition using contrapositive
second by definition

b |-a | = |-a|
use each three cases of dichotomy

try d and e tutorial questions

#Trainagle inequality
||a|+|b|| \geq |a| + |b|

* |a + b| \leq |a| + |b| tut
* | |a| - |b| \leq |a + b|
> proof
> > a = a - b + b \to |a| = |a - b + b| = | (a-b )| + |b|
> > b = b - a + a \to |b| = |b - a + a| = | b -a| + |a|
by c $|b| \leq |a - b| + |a| \to |b| \leq |b - a| $
combining
multiple ** -1 **
|a - b| \leq |a| - |b| 
- |a - b| \leq |a| - |b| \leq a-b | by d
 \Leftrightarrow triangle inequility
 to proove with minus just sub in -b
 T

Rational numbers

# Absolute value theorems proove off definition

# Completeness

* A set $X$ is bounded above $\rightarrow \exists x_u | \forall x \in X x \leq x_u$
* A set is bounded below $\rightarrow \exists x_l | \forall x \in X x \greq x_l4
* A set is bounded if it is upper and lower bounded
  + Bounds are not unique
* A supremum of a set is the least number for which all other elemnts of the set are less then that number(It exist if the upper bound is not zero)
* An infimum is the largest lower bound of X
* maximum and minimium are supermum and infinmum contained within their sets.
    + Properties and proofs are often from the definition of intervals

## Proof open intervals have no maximum or minamum
[a,b) let c be in the interval and be the maximum 

Let m be a maximum of s
take the average of m and b it is larger than m and less the b so there is a contradiction.
**Dedekind completeness axiom** 
  Every nonempty subset of \mathbb{R} which is bounded above has a supremum


Go over supermem upper bounds and maxiumiums.

## Roots from diedkin completeness
From section 1.2 onwards we do not motavate from axioms.

* Proove that there are positive unique root forall positive numbers.
* Proove existance  
* Show that the set $ S_a = \{ x \in \mathbb{R} | 0 < x, x^2 <a}
* Show the set is not empty and that it has an upper bound.
* First test pick a number which works
* show that a+1 will work as an upper bound
* by **D** $S_a$ must have a suprema which is strictly greater than zero
* Show that $m^2$ of a is equal to a
  + Proof by contradiction assume $m^2 \neq a$
    - Assume $M^2< a$ put $\epsilon = min\{ \frac{a-M^2-a}{4_a},M_a}$ than $\epsilon > 0$
    - (M)

# $\sqrt{2}$ is irration

**Proove by contradiction**

Suppose
$\sqrt{2} = \frac{p}{q} | p,q \in \mathbb{Z}^+ and the is no k \in \mathbb{Z} such that p = k P1 q = k q1

2 = \frac{p^2}{q^2} \to p^2 = 2q^2 so p^2 is even so p is even by contrapositive.

* p^2 is a mutiple of 4
* So q is even **Contradiction**

**Proove bernolli's inequility**
By induction

* $(1 + x)^0  = 1 = 1+0x$
* Assume true for n
* muliply both sides by (1+x) and remove convient terms

# Chapter II Sequences(Convergence)

A sequences maps the naturals onto the reals

Is the sequnce \frac{n}{n+1} convergent?

**Proof**
$\left| \frac{n}{n+1} - 1 \right| < \epslion$
$\left| -1/ n+1 | = 1/n+1 < \epsilon $

* Solving give $\frac{1}[\epsilon} -1 < n
* Since k_epsilon belongs to r kepsilon' by achemedian principle 1/k(a) + 1 < \epsilon.
* For any m > k(a) \to n+1 > k(a) +1
* 1/keplsion + 1 < \epsilon>
