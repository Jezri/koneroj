Basis 
:

  * et v be a vector space over a fiel **F**
  * A system of vectors is a basis of v if
    + it is linearly independent
    + the span of the vectors is v that is every vector a from v can be written as a linear combination of those vectors^[The coefficents called cordinates can be determined uniquely]
    
Let S be a finite subset of V whcih spans the whole space. Then there is a basis of for V contianed in s. 

> Proof
> >
> > It suffice to choose a linearly indepent system a_1 to a_n a subset in s whose span contains s
> > Becouse if $<a_1 \cdots a_n>=<<a_1 \codt a_n>> \subset <S>$
> > If <a1> \in S , we are done
> > Otherwise we can pick a3 from s -a1 - a2 and in $\leq |S$ we obtain the required system

* A vector space v is called finite dimensional if there is a finite subset of vectors in v which spans the whole of v
* **corollory** every finite dimensional space vector space has a basis 

# All bases of a finite vector space have the same number of spaces^[This is the main result about vector spaces]
* **2 systems lemma** Let A = a1 ... an and B = b1 ... b  be 2 systems of vectors in a vector space
  + Suppose B is independent and B is a subset of the span of A
  + Then n is greater than or equel to m
    - Proof
    - Assume on the contrary that n < m
    - Let A1 be the system A and adding the vector b1 from the left since b1 belongs to the span of a A1 is linearly dependent
    - Let C1 donate the system obtained by removing any vector which is a linear combination of the preceading vectors.
    - This vector cannot be b1 So C1 is \{b1 ... \} has n vectors |C1| = n
    - The span of c1 is <c1> =<a>
    - Let a2 donate the system obtained from C1 obtained from c1 by adding the vector b2 from the left. A2 is linearly depepndt becouse b2 belongs to the span of A and consiquenly C1
    - Let C2 donae the system obtained from A@ by removing any vector whcih is a linear combination of the preceading vectors.
    - This vector cannot be b2 nor b1 becouse B is linearly independent
    - |C2| = n  <C2> = <A> Continue in this process
    - In n steps we obtain the system Cn = {b1 .. bn} <Cn>= <A>
    - Contradiction But than bn+! belongs to the span of <Cn> a contradiction?
  + Main result
  + Theorem All basis of a finite dimensional vector space have he same number of vectors. 
  + Proof
  + Let A and B be two basis of V
    - We need to show that they have the same cardinality and
    - since b is linearly independent and the span of b is the whole space
    - |A| \geq |B| and $|B| \geq |A|$ 

Dimension of a vector space
: 
  * Let V be a finite dimensional vector space 
  * Dim of V is the number of vectors in a basis of V 

## Example $f^n$
Let ei be the vector whose ith coordinate is one with all other coordinates zero

We claim that these vectors are are basis. 

To see that s is linearly independent

* Let some linear combination of the vectors be equal to the zero vector only a traivias solution is possible
* To see that <s> = F^n , let x be (x1 ... xn)\in F^n then x1e1 + xnen can make any vector x1,...,xn

### Second example

* The coordinate space $F_n[x]$ polinomials with a degree not exceeding n
* The stanadard bases is $\{1, x^2 ..x^n\} the dimensions of this vector space in n+1

### the space of 2 by 2 matrixes

# Cordinates
A set of coefficients tht when multiplied by a basis result in a specific vector x

# Isomorphs

If v is a vector space over a field f and s is a set a! to an than any vector x in V ca be expresed as a linear combination of S

* Then the coordinates are the set of of the coeeficients and is called the coordinate vector. 
* If we have a new bases s' consisting of b and a new set of coordinates in the new bases
* $[x]_s'$ 
* The qusetion naturally arrises what is the realtionship between the two coordinate vectors?
* To answer this question
* Express the vectors of the new basis via the vectors of the old basis
* b1 =  gamma11a1 \cdot gamman1an
* bn = \gamma_[n1]a_1 \cdots \gamma[nn]a_n$
* x = \beta_1b_1 +\cdots
* replace bs with linear combinations of as
* Gather coefficients of each a
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

# Proof method works

The justification of the elementary row operations method is based on the following simple fact.

> **lemma**
> 
> let A be an m \times n matrix and let b be the matrix obetained from A from an elemantary row operation. Than B is F \cdot A where f is the matrix obtained from the identity matirx of the identity matrix of order m by the same elemtary row operation.
>
> **Proof** F = I 
> ** F_1 can be obtained by one elemtary operation on F
> $F A$  the matrix a obtained by the same elementry row opperation

Suppose we have n by 2n matrix (A |B) and we apply operations tau 1 to tau 2 we claim that C A^-1 B
let F_1 to F_k be the matirxes obtained from the elemantary matrix obtained by the elematary row operations.
than bby the elemantary row operations lemma F_k to F_1\cdots F1A=E
* F_k F_1 B = C
* F_k \to F_1 == A^{-1}
* C = A^{-1}B

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

## Examples
Every vector space has at least 2 trivial subspace trvial subspaces and the whole space V

* All other subspaces are called non trivial or proper
* $\R^3$
* Lines and planes through the origin
* The space of polinomiels of degree not exceeding n is a subspac of all polinomies
* The set $C[0,1] of all contious real valued functions definied on the unit interval is a subspace of all functions on the unit interval
*$<S>$ is the smallest subspace containing S
* A m \times n matrix over a field F and consider Ax=O
  + the solutions of this equation form a subspace of F^n

## Execizes

* Proove that for any subspace Wi \in V i\in I the interection of subspaces is always a subsapce.
  + let x and y be any vectors from that interesection
  + each Wi is a subspace than for each I x+ y belongs to Wi
  + Assuming that V is finaite dimensionsal proove that for all subspaces W \subset of V the dimension of W  \geq 0 and is less than or equal to the dimension of V. Furthur more the dimension of w is zero if and only if w is the zero vector

* 0 \leq W \leq dimV
* pick a basis of W and extend it to a bases of V


# Direct Sum

* Proove that $\forall W_i \subset V \exists W_1 + \cdots + W_n = x_1 + cdots x_n | x_i \in w_i \forall i
* x,y = W1 + Wn with xi + xn , y= y1 + yn xi,yi \in wi
* thn x+y = (xi + yi ) + \cdots \Leftrightarrow x + y \in W
