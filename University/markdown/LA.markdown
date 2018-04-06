# Vector spaces
An arbitary none empty set of vectors for which addition and scalar mulitplication are definied.
Addition is transitive commutitive has an identity $\theta$ and an inverse

Scalar mulitpplication is defined with scalars on the left always.
Is distarbutive over matrix addition, and scalar addition and is commutitive with scalar mulitplication. There is an identity scalar 1

# Linear independece
A system of vectors is linearly independent $\Leftrightarrow$  (some linear combination of the vectors is equal to the zero vector only has trivail solutions

$$\sum_{i=1}^n a_i \alpha_i = \theta \Leftrightarrow \{ \alpha\}_1 ^n = 0$$

# Basis

Basis 
:

  * let v be a vector space over a field **F**
  * A system of vectors is a basis of v if
    + it is linearly independent
    + the span of the vectors is v (that is every vector a from v can be written as a linear combination of those vectors^[The coefficents called cordinates can be determined uniquely])

**Let S be a finite subset of V whcih spans the whole space. Then there is a basis of V contianed in S.** 


> Proof
> 
> > It suffice to choose a linearly indepent system 
> > 
> > $a = \{ a_1 \dots a_n \} \subset  S \wedge S \subset <a>$
> > Becouse if 
> >
> > $<a_1 \dots a_n> = <<a_1 \dots a_n>> \subset <S>$
> >
> > If $<a1> \in S$ , we are done
> >
> > Otherwise we can pick $a_3$ from $S-a1 - a2 \wedge \in a_3 |S$ we obtain the required system
>

* A vector space v is called finite dimensional if there is a finite subset of vectors in v which spans the whole of v
  + **corollory** every finite dimensional space vector space has a basis 

## All bases of a finite vector space have the same number of vectors^[This is the main result about vector spaces]
 
### Main result
 
**Theorem** All basis of a finite dimensional vector space have he same number of vectors. 

**Proof**

> Let A and B be two basis of V.
> We need to show that they have the same cardinality and
> since B is linearly independent and the span of b is the whole space **(2 systems lemma)**
>
> $|A| \geq |B| \wedge |B| \geq |A|$ 

### 2 systems lemma 

* Let $A = \{a_1 \dots a_n\} \quad B = \{b_1 \cdots b_m\}$  be 2 systems of vectors in a vector space
  + Suppose B is linearly independent and $B \subset <A>$
  + Then n is greater than or equel to m

**Proof**

> **Assume on the contrary that $n < m$**
> 
> * Let $A_1 = \left[ b_1, A \right]$ be the system A and adding the vector b1 from the left 
>   + A1 is linearly dependent    **($b_1 \in <A>$)**
> *  Let C1 donate the system obtained by removing any vector which is a linear combination of the preceading vectors.
>   + This vector cannot be b1 **(B is linearly independent)** 
> * $|C1| = n$
> * $<c1> =<a>$
> * Let A_2 donate the system obtained from C1 obtained by adding the vector b2 from the left. A_2 is linearly dependent becouse b2 belongs to the span of A and consiquenly C1
> * Let C2 donae the system obtained from A2 by removing any vector whcih is a linear combination of the preceading vectors.
> * This vector cannot be b2 nor b1 **(becouse B is linearly independent)**
> * |C2| = n  <C2> = <A> Continue in this process
> * In n steps we obtain the system Cn = {b1 .. bn} <Cn>= <A>
> * Contradiction But than $b_{n+1}$ belongs to the span of <Cn> a contradiction **(B is linearly independent)**^[Shouldn't this be a proof by induction?]



Dimension of a vector space
: 

  * Let V be a finite dimensional vector space 
  * Dim of V is the number of vectors in a basis of V 
 
### Examples

#### $\mathbb{F}^n$

Let E be a system/set^[order doesn't matter] of vectors $\{e_i\}_{i=1}^n$

>  **Where** 
>
>  $e_i$ is a vector whose ith coordinate is 1 with all other coordinates 0


E is a basis of $\mathbb{F}^n$. 

> **Proof**

* E is linearly idependent **(No scalar multiple or sum of 0's is 1)**
* $<E> = \mathbb{F}^n$
  +  $\forall x \in F^n$ $x = (x1, ... ,xn)$
  +  $\Rightarrow(x_1e_1, \cdots, x_ne_n) = x$

### Second example
 

* The coordinate space $F_n[x]$ polinomials with a degree not exceeding n
* The stanadard bases is $\{1, x^2 ..x^n\}$ the dimensions of this vector space in n+1


### Third example 

The space of 2 by 2 matrixes
Standard basis is ones and zeros

# Cordinates and isomorphs

Cordinates
:

  A set of coefficients that when multiplied by a basis result in a specific vector x

Isomorph
:

  Two vector spaces are isoporphs if there is a bijection between them which presevers some important porperties.
  Scalar multiplication and addition.

## Finding isomorph transformation

If V is a vector space over a field $\mathbb{F}$ and S is a basis of V  $\{s_1, \dots s_n\}$.

Then the coordinates of v $v_{[s]} = \{\alpha_i\}_{i=1}^n$ are the system of coeeficients which mulitplied by S are equel to v, and is called the coordinate vector. 

* If we have a new bases $S'= \{s'_1 \dots s'_n\}$ 
  + Then we have new cordinates $[x]_{s'} = \{\beta_j\}_{j=1}^n$ 
* **To  find the isomorph transormation**
* $x = \sum_{j=1}^n \beta_j s'_j$
* $s'_j =   \sum_{i=1}^n \gamma_{ji} s_i$ 
  + Express the vecotrs in the new basis in terms of the old basis
* $= \sum_{j=1}^n \beta_j \left(\sum_{i=1}^n \gamma_{ji} s_i)\right)$
* $= \sum_{i=1}^n s_i \left(\sum_{j=1}^n \beta_j \gamma_{ji} \right)$
* $= \sum_{i=1}^n \begin{pmatrix} s_{1i} \\ \vdots \\ s_{ji} \end{pmatrix}\left( \sum_{j=1}^n \gamma_{ji} \beta_i \right)$
* $= \sum_{i=1}^n \begin{pmatrix} s_{1i} \left( \sum_{j=1}^n \gamma_{ji} \beta_i \right)\\ \vdots \\ s_{ji} \left( \sum_{j=1}^n \gamma_{ji} \beta_i \right)\end{pmatrix}$
* $= \sum_{i=1}^n \begin{pmatrix} s_{1i} ( \gamma_{1i} \dots \gamma_{ji} )\\ \vdots \\ s_{ji} (\gamma_{1i} \dots \gamma_{ji})\end{pmatrix} \beta$
* $= \begin{pmatrix} \sum_{i=1}^n s_{1i}  \gamma_{1i} \dots \sum_{i=1}^n \gamma_{ji} \gamma_{ji} )\\ \vdots \\ \sum_{i=1}^n s_{ji} \gamma_{1i} \dots \sum_{i=1}^n\gamma_{ji})\end{pmatrix} \beta$
* $= \Gamma S \beta$ 
* **Possibly with a tranformation** **Check**
* Write as the product of matrix gamma and vector beta
* the matirx to the poweroff of minux one will do the oposite prosseses.

## Examples for computing the transition matix

*
* Let S be the standard basis of the plane $\mathbb{R}^2$
* Let S' be the basis of R^2 obtained by rotating the plane countercloakwise above the origin through an angle 5
* Find The transition matrix from the old matrix to the new basis
*
* Draw a diagram
* form Traingle to new basis vectors
* Write the new basis as some some of the old basis
* e1' = cos theta e1 + sin theta e2
* e2' = -sin theta e1 + cos phi e2
* Form matrix by taking the transpose of 

* Suppose we are in $F_u[x]$ S is old(standard) basis s' is new basis 1 x+a (x+a)^2
    Find the tranformation vector
    Transition matrix will be upper triangles of with columns nC0 down to nCn

* Third examples
* Solve the matirx equation
* Write A | B and find reduced row echelon form The result on the the B side is the elementary matirx. where A and b are old and new written with matrixes as collumns

### Proof method works 
 
The justification of the elementary row operations method is based on the following simple fact.

> **lemma**
> 
> let A be an $m \times n$ matrix and let b be the matrix obetained from A from an elemantary row operation. Than B is $F \cdot A$ where F is the matrix obtained from the identity matirx of the identity matrix of order m by the same elemtary row operation.
>
> **Proof** $F = I$ 
> $F_1$ can be obtained by one elemtary operation on F
> $F A$  the matrix a obtained by the same elementry row opperation

Suppose we have n by 2nd matrix $(A |B)$ and we apply operations $\tau_1$ to $tau_n$ we claim that $C A^-1= B$
let $F_1$ to $F_k$ be the matirxes obtained from the elemantary matrix obtained by the elematary row operations.
than by the elemantary row operationsi

lemma $F_k$ to $F_1\cdots F1A=E$

* $F_k \dots F_1 B = C$
* $F_k \to F_1 == A^{-1}$
* $C = A^{-1}B$

Non Standard Exersize not in exam
suppose we are given a rectanglur matrix whos entries are integers and we are alloed to multiply any row or any colom by -1.
Proove by using finitily many such operations we can reduce our matrix to a matrix such that whenever we take a row or a colum the sum of elements will be be nonnegative.
Produce an algorithm to do this.

# Subspaces and direct sums

Let $v$ be a vector space over field f. 

w is a subspace of v if

* w is closed under vector addition.
* w is closed under scaler multiplication
* every subspace is a vector space

Every vector space has at least 2 trivial subspace trvial subspaces and the whole space V. 
All other subspaces are called non trivial or proper

Examples

* $\mathbb{R}^3$
* Lines and planes through the origin
* The space of polinomiels of degree not exceeding n is a subspac of all polinomies
* The set $C[0,1]$ of all contious real valued functions definied on the unit interval is a subspace of all functions on the unit interval
    }*$<S>$ is the smallest subspace containing S
* A $m \times n$ matrix over a field F and consider $Ax=O$
  + the solutions of this equation form a subspace of $F^n$

## Execizes

* Proove that for any subspace $Wi \in V i\in I$ the intersection of subspaces is always a subsapce.
  + let x and y be any vectors from that interesection
  + each Wi is a subspace than for each I x + y belongs to Wi
  + Assuming that V is finaite dimensionsal proove that for all subspaces $W \subset V$ the dimension of $W  \geq 0$ and is less than or equal to the dimension of V. Furthur more the dimension of w is zero if and only if w is the zero vector

* $0 \leq W \leq dimV$
* pick a basis of W and extend it to a bases of V


# Direct Sum

There are teo operations which are direct sums and are anologious. The cartisian cross with a new F and the addition of a vector not in the existing basis.

* Proove that $\forall W_i \subset V \exists W_1 + \cdots + W_n = x_1 + \cdots x_n | x_i \in w_i \forall i$
* $x,y = W1 + Wn$ with $xi + xn , y= y1 + yn xi,yi \in wi$
* then $x+y = (xi + yi ) + \cdots \Leftrightarrow x + y \in W$
* The direct sum V1 plus in circle Vn is a space of f consitiing of all ntuples x1 to x2 where each Xi is from vi and the operations are corodinate wise)
* x1 to Xn + (y1 to y_n) = x+y1 + xn + yn
* Let V be a vector space over a field F and let w1 to wn be subspaces of v
  + suppose that every vector x from b can be uniquely wriiten as x = x_1 + X_n where each xi is from wi
  + Than v is isomorphic to the direct sum of w1 cirlce plus wn
  + **Proof** An isomophism is a bijection which presevers perations
  + define a mapping a from v to the direct sum by A_x is a sum of n tuple x_1 to x_n where x is x_1 to x_n with x_i an element from $xi \in wi$
  + The image is this ntuple
  + it is easy to check that a is one to one and a bijection and preseves operations and a of x plus a y = ax + ay
  + What doe this strong condition
  +
  +Proove that the following staments are equivalent.
  1) every vector x from v can be uniquley written as x is x_1 plus x_n where each x_i is from w_i and 
  2) v s the sum of all those subspaces the interesction of each wi with the sum of the rest of the subspaces = {0} for each i from 1 to n
  3) and w_1 intersection w2 is = [0]
  **Proof**
  1 implies 2
  The sum part is obvious and follows from the fact that every vector x from v can be writtine the sum form.
  Now to see that the second part of 2 holds
  let $x \in wi \cap \sum _{j \neq i }w_i$ 
    write $x as x = \sum[j \neq i] x_i x\in x \in w_i$
    define $x_i$ from wi by $x_i = -x$
  Than the sum x_i for i from 1 to n is the zero vector which is minus x 
  $\sum i=1 \to n xi = \theta = \theta_ + \theta$ n times and so $x = -xi = \theta$
  **2 implies 1**
  That x can be writtin tin this from follows from the v is the sum of wi.
    **Uniquness** $\underbrace{y_1 + x_1}{z_n} x_1 - y_1 = \theta$
      show that z_i = is the sum minus z_j forall j neq i
      So zi is a vector from wi and wi is in the sumof wi

# Rank of a matirx

Let a be an m by n matrix in the field n

Where the rows are vectors of Fn which is a subapce of fn
and the columns are vectors from fm which is a subsapce of A

The dimersion of the space is the row rank or column rank of the matrix

equivilantly the row rank of a is the number of thevectors in the maximal linearly indeendent subsystem of vectors a1 to am
The column rank is identical 

It can be easily checked that elementary row operations do change the row the row rank.
Elementary column operations do not change the column rank

The reduced row echelon form of a produced by gauss elimination, and a have the same row rank.
The row rank of a is the number of none zero rows in a row echelon from of a

The row rank and the column rank are equal? This is the main result and this is the rank of the matrix

it suffices to show that the row rank does not exceed the column rank of A (trivial taking the transpose)
since the coloumns of c are linearly indenpendent so there are only trivial solutions
Consiquently row echelon form of c has has k none zero rows.
Therefore we must have k linearly independent rows otherwise we would have a nontrivial solutions
pick k linearly independent rows of C
Than the columns cj1 to cjk corrisponding to bj1 to bjk are linearly independent
Hence the column rank of A is greater than or equal to K
since the row and column rank is equal they are called the rank of the matirx

Proove that a system of linear equations Ax =b hax a solution iff rank of the extended matrix A|b = rank A

**Proof** ax is b has a solution iff b belongs to coumn space of a iff rank of ab is rank of a

Find a basis of the solution space of a system of homegenius equations

# Linear Transformations

* Let v and w be vector spaces over the same field F
* A mapping $A:V \to W$ is a linear transformation if the following two axioms are satisfied
* A(x+y) = A(x) + A(y) for all x,y in v
* and saclar mulitplication is preseved
* $A: V \to V$ is a linear operator
* $V \to F$ is a linear functional
* It follows from the axioms of a vector space that 
* $A(\theta) = \theta$
   + Proof
   + $A(\theta + \theta) = A(\theta) + A(\theta)$
   + $a + a = a$ 
   + $-a + a + a = -a + a$
   + $a = \theta$
* **ii**
  + $A(-x) = -A(x)$ 
  + $A(x) +(-A(x))$
  + $A(\theta) = \theta$
  + $A(-x)= A(x)$
* $A(\sum \alpha_i x_i) = \sum \alpha_i A(x_i)$

Examples of linear tranformatinos

* The rotation of the plane about the origin through by some angle $\phi$ countercloakwise 
* Proof is geometric
*
* Projection of the plane onto any line through the origin
* Reflection
* Any vector x 
* Also the reflection of the plane by a lnie through the originare linear operators
* Transloation is not a linear operator
* Let a be any m by n matrix over a field F and define A from fn to fm by A of x is A(x) 
* than A is a linaer transformations.
* Infact any Matrix multiplication is a a linear tranformations

## Differentiation of polynomials is a linear operations: $D F[x] f(x) \to f'(x) \in F[x]$
* where $(\alpha_0 \alpha_2x ) = \alpha_1 + 2 \alpha_2 x$
* Intergration
* $C[a,b] f(x) \to \int_a^b f(x)dx \in \mathbb{R}$
* There are many anti derivaties of a given funciton (artbitrary constants)

## Linear operrators II

* For every linear transformation A from V to W
* The kernal is the set of a vectors mapping to $\theta$
* The image of A Is the set of a ys mapped to 
* Both the kernal and the image are subspaces of V and the image of A is a subspace of W
To see for example that the kernal is a subspace 

* $x,y \in ker A A(x) = \theta a(y) = \theta$

**Theroem**

Assume that V is finit dimensional

Then the dimension of the kernal of A + the dimension of the image of A is the dimension of V
Proof 
Pick a basis a1 to am in the kernal and extend it to a basis $a1 , an, b1, bk \in V$
And so we claim that $A (b1) \to A9(bK)$ is a basis of the image of A.

* To see that the span of $<A(b1) \dots A(bn)> = image A let y \in A$
* Then $x \in V$ s.i $A(x)=y$
* Write x as $\alpha_1 a1 +$
* Then $y = A(x) =A(alpha a a1 + ... + \beta_1 b1 +...)$
* $= 0 + \beta1 + beta(A)$

* To see that $A(b1) ... A(bk)$ are linearly independent
* Consider an arbitrary linear combination of the As
* As a is a linear combinaion take A of an arbitary linaer combinations of b
* All bs are memebers of the kernal of A
* So the linear combination of bs can be expressed in the basis of ker A which are as
* so alpha $a + .. - \beta 1 b1 = \theta$
* impleis all alphas and betas must be zeros
* The alphas form an image of the keranl and the bs form an image of the kernal together they form a basis of the system
* Then the dimansion of it solution space is n-rank(a) so

> Proof 
> Define A from $F^n \to F^m$
> $A(x) = A(x)$
> Then the kernal of this linear tranformation is the solution space of our system
> And the image of a is the column space of our matrix
> Which is the rank of the matrix
> Then apply the theroem
> Suppose that the rank o

# Test The chapter vector spaces not includeding linear tranformations

* Typical exersizes
  + Supppose you have some vectors in a vector space check if the some vectors form a basis of that space and find the coordinates of that vector
  + Perform gauss elemination and if you get the identity matix it is a bisis and the cordinates of another vector is 
  + **The transition matirx is from S to S'** !!!!!!!!
    * S|S' and perform gauss elimination to get E|T 
    * The cordinate of x is the new basis [x]_s = T{x}_s'
  + Proove simpler statment not two system lemma

