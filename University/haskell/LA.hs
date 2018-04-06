{-# LANGUAGE QuasiQuotes, OverloadedStrings #-}
import NeatInterpolation (text)
import Text.Pandoc
import Data.Text (Text, unpack)
import qualified Data.Text.IO as T
import Prelude
import System.IO
import Raw
import Preamble

main :: IO () 
main = do 
  txt <- mdToLaTeX linearAlgebra
  vecSp <- mdToLaTeX propsVecSpace
  linD <- mdToLaTeX linearDep
  linDP <- mdToLaTeX linearDependencyProposition
  sp <- mdToLaTeX linearSpan
  bas <- mdToLaTeX linearBasis
  handle <- openFile "LA.tex" WriteMode
  hPutStr handle $ unpack myTufte
  hPutStr handle (unpack $ txt)
  hPutStr handle (unpack $ vecSp)
  hPutStr handle (unpack $ linD)
  hPutStr handle (unpack $ linDP)
  hPutStr handle (unpack $ sp)
  hPutStr handle (unpack $ bas)
  hPutStr handle "\\end{document}"
  hClose handle

mdToLaTeX :: Text -> IO Text 
mdToLaTeX txt = runIOorExplode$
  readMarkdown def{readerExtensions = pandocExtensions } txt 
  >>= writeLaTeX def{ writerReferenceLinks = True }

linearAlgebra :: Text
linearAlgebra = [r|
Linear algebra
==============

Field
: A set $F$ of with two opperators $+$ and $\cdot$ such that $\forall f_1, f_2, f_3 \in F$
  
  * Addiition
    + $(f_1+f_2)+f_3 = f_1 + (f_2 + f_3)$ Addition is associative
    + $f_1+f_2 = f_1+f_2$ Addition is comutitive
    + $\exists 0 | f_1 + 0 = f_1$ Indentity of addition
    + $\exists -f_1 | f_1 + (-f_1) = 0$
  * Multiplication
    + $(f_1 f_2) f_3 = f_1 (f_2 f_3)$ Multiplication is associative
    + $f_1 f_2 = f_1 f_2$ Multiplication is comutitive
    + $\exists 1 \neq 0 | f_1 \dot 1 = f_1$ Indentity of addition
    + $(\forall f_1 \in F | f_1 \neq 0) \exists f_1^ {-1} | f_1 ( f_1^{-1}) = 1$
  * Distrabution
    + $f_1(f_2+f_3)=f_1f_2 + f_1f_2$ multiplication is distributive over addition
   |]

propsVecSpace :: Text
propsVecSpace = [r|

Properties of vector spaces
---------------------------
* $0 \cdot \vec{a} = \vec{0}$

> Proof
>
> $\quad 0 \cdot \vec{a} = (0 + 0) \cdot \vec{a} \quad \text{A3}$
>
> $\quad 0 \cdot \vec{a} = 0 \cdot \vec{a} + 0 \cdot \vec{a} \quad \text{Dist}$
>
> $\quad 0 \cdot \vec{a} - (0 \cdot \vec{a}) = 0 \cdot \vec{a} + 0 \cdot \vec{a} - ( 0 \cdot \vec{a})$
>
> $0 0 = 0 \cdot \vec{a} \quad \text{A4}$
>

* $(-1) \vec{a} = -a$

> Proof 
>
> $(-1) \vec{a} = -a \quad \Leftrightarrow \quad (-1) \vec{a} +1 \vec{a} = 0 \quad \text{M3}$
>
> $\quad 1 \vec{a} + (-1) \vec{a} \quad \text{M3}$
>
> $=(1 - 1) \cdot \vec{a} \quad \text{Dist}$
>
> $=0 \cdot \vec{a}$
>
> $=\vec{0}$
>

* $\lambda \vec{0} = 0$

> Proof
>
> Find this proof

* $\lambda \vec{a} = \vec{0} \Leftrightarrow \lambda = 0 \wedge \vec{a}=0$

> Find proof

|]

linearDep :: Text
linearDep = [r|

# Linear Dependency
Let $V$ be a vector space over $F$
A set of vectors $\{\vec{\alpha _i} \to \vec{\alpha _n}\}$ if there are no nontrivail.[^trivial] solutions to the equation $\sum_{i=1}^n a_i \cdot \vec{\alpha_i}=0$
This is equivelent to saying 
$\mathbf{A}\vec{x}= 0$ has only trivial solutions

[^trivial]:

	trivial 
	:	$\forall i a_i = 0$

	nontrivial 
	:	$\exist i | a_i \neq 0$

This implies that elemtry row operations to get a reduced row echelon form will result in no zero rows.

The contrapositive stamament is that the existance of a nontrivial solution implies that the system is the system is linearly dependent.


|]

linearDependencyProposition :: Text
linearDependencyProposition = [r|

# Propositions

**Proposion** For a system of vec {a1 .. aN} the following statents are equiv

* {a_1 to a_n} is linearly dependent
* \exist a_m | a_m is a linear combination of the remaining vectors
* at least one vectors can be a_1 ... a_n is a linear combination of the preseading vectors.^[Why is this true]

^[Order is important]
proove mulitple statment are equivenlt using a cycle (a \to b \to c \to a)
> Proof
> >  1( \to 3 
> > \exists a nontiravlai combination of coefficient such that **A** $\cdot \vec{a} = \vec{0}$
> > take the last vector of a nontriavial soltion without a zero coeefiecint $\alpha j \neq 0$
> > $a_j  = a_1(\alpha_1)(\alpha_j)a_1 ...$

3 \to 2
$a_j = \beta a_2 + b i-1 + b i + 1 +b)n = b_n = 0$
$a_i = \beta b-1 a_1 + b_1 a-1 + b_n a_n$

$2 \to a \beta \alpha + \beta  \alpha = 0$ non trivial becouse beta j is not zero full proof
|]

linearSpan :: Text
linearSpan = [r|

# Span

Let v be a vector space over a field f
and let s be \subset V
the span of S denoted  < S>  is the subset of V consisting of all vectors whcih can be represented as a linear combination of vectors from s.
That is alpha 1 a1 + alpha n a n from S {\apha} \in F

Proove that 0 \in <S> Trivial combination
S \in <S> a = 1.a
iii) 





# Span 2

The set of all vectors from v that can be expresed by linear combinations of the vectors of s $<s> = \sum \alpha _i a_i$

* The zero vector is always in the span
* s is a subset of s
* s is a subset of t implies the span of s is a subset of t
* the span of the span of s is the span of s
  + Proof
  + $<s>$ is a subset of $<<s>>$ ^[Now proove cthe converse]
  + $c=\beta_1b_1 + \cdots + \beta_m b_m \in <s> a_1 a_n\in <s>$
  + $b_i = \alpha_1a_1 + \cdots \alpha_ma_m$
  + $c=(\Beta_1\alpha_{11}+\cdots \Beta_m \alpha_{m1}a_1 \cdots + (\beta_m \alpha_{1m}\cdots)$
* if we add to s a vector which is a linear combination of vectors from s or remove from s a vector which is a linear combination of the remaining vector from s then the span of s remains the same
   + a collarary of 4
* A set of vectors is linearly independent if and only if the system without the last vector is linearly independent and the last vector is not in the span of the previous system
  + Proof
  + suppose the smaller system is linearly dependent
  + Then the new system will be linearly dependent by simply adding a zero coeeficient to the last vector becouse there will be a none zero coeeficient in the previou system so the solution to the new system will also be nontrivial
  + To see the escond stament
  + Assume on the contrary that the new vector belongs the the span of the previous set of vectors than it can be shown easily that there exist a none trivial solution to the new system.
  + Sufficiency
  + Assume on the contrary the the new set is linearly dependent
  + There is a nontrivial combination for the new system which equale $\Theta$  such that $\alpha_{n+1} \neq0$ otherwise only nontrivial solutions would exist!
  + But this contradicts with the fact that the new vector is not in the span of the previous vectors
    - But than a(n+1) = $\frac{\alpha_1}{\alpha_{n+1}}a_1 \codts$ which meens that an is an in the span of the previous vectors


|] 

linearBasis :: Text
linearBasis = [r|

Basis 
:

  * Let v be a vector space over a fiel **F**
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
|]
