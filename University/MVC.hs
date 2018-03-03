{-# LANGUAGE QuasiQuotes, OverloadedStrings #-}
import Control.Monad
import NeatInterpolation (text)
import Text.Pandoc
import Data.Text (Text, unpack, pack)
import qualified Data.Text.IO as T
import Prelude
import System.IO
import Raw
import Preamble
import Notation
import Koneroj

main :: IO () 
main = do 
  let a = mdToLaTeXFold[mvc, differentials, productRules, twoDTan, tSeries, fullNotation]
  latexToFile "MVC.tex" a

mvc :: Text
mvc = [r|
Multi Veriable Culculus
=================================

## Vector function^[Row and column vectors are treated interchangably in the coarse]
$\vec{F} :: R^n \rightarrow R^m$

$\text{Domain} \quad \subseteq R^n$

$\text{Range} \quad \subseteq R^m$

## Continuity^[All functions in the coarse are continues]
$\vec{F}$ is continues $\forall \vec{a}$ if the limit exists and and is equal to the function for all a$

Limit:

  The limit of of a vector function $\vec{F}(\vec{X})$ is defined as

  $\lim_{ \vec{x} \to \vec{a} } \vec{F} (\vec{x} ) = \vec{l}$

  if
  for each $\epsilon > 0 \exists \delta > 0$ 

  such that 
  $\quad 0< ||\vec{x}-\vec{a}|| < \delta$

  $\Leftrightarrow || \vec{F} (\vec{l})|| < \epsilon$

## Scalar triple product
$\vec{x} \cdot (\vec{y} \times \vec{z}) = 
    \begin{vmatrix}
    x_1 & x_2 & x_3 \\
    y_1 & y_2 & y_3 \\
    z_1 & z_2 & z_3 \\
    \end{vmatrix}$

## Projection
$\text{proj}_a b = \frac{a \cdot b}{|a|^2} a\quad$

## Componenets 
$\frac{a \cdot b}{|a|}$

Do shwats and traingle inequilty

Parametric form:

  An equation is in parametric form if it is of the type 
  $\vec{F} :: \mathbb{R} \to \mathbb{R}^n$ 
  
  for a circle:
  $$f(t) =  \begin{pmatrix} r \cos (t) \\ r \sin (t) \end{pmatrix}$$

Continuity:

  $\vec{F} :: \mathbb{R} \to \mathbb{R}^n = \{f_i(t)\}_{i=1}^{n} \quad | \forall i \in [1 , n] \; f_i:: \mathbb{R} \to \mathbb{R}$
  
  $\vec{F}$ is continious $\iff$ $\forall i \in [1,n] \; f_i$ is continious 


|]

differentials:: Text
differentials = mdFold [[r| 

# Differentiates of vector functions|], 
                        inSidenote(deffinition), 
                        [r|

## Differentiates of $\vec{F}: \mathbb{R} \to \mathbb{R}^n$

RHS          LHS
----------   -----------------------------------------------------------------------------------------------------------------------------------------------------------------
$\vec{F}'$   $=\lim_{a \to 0}\left( \frac{1}{a} \left( \vec{F} (x + a ) -\vec{F} (x)\right) \right)$  
             $=\lim_{a \to 0}\left(\frac{1}{a} \begin{pmatrix} f_1( x + a) -f_1(x) \\ \vdots \\ f_n(x + a) -f_n(x) \end{pmatrix} \right)$ 
             $=\lim_{a \to 0}\begin{pmatrix} \frac{f_1( x + a) -f_1(x)}{a} \\ \vdots \\ \frac{f_n(x + a) - f_n(x+a)}{a} \end{pmatrix}$
             $=\begin{pmatrix}\lim_{a\to0}\left(\frac{f_1(x+a)-f_1(x)}{x}\right) \\ \vdots \\ \lim_{a \to 0} \left( \frac{f_n(x+a) - f_n(x)}{x} \right) \end{pmatrix}$
             $=\begin{pmatrix} \frac{d f_1(x)}{dx} \\ \vdots \\ \frac{d f_n(x)}{dx} \end{pmatrix}$

## Differenetiates ^[functions resulting a scaler are not written as vectors!]of $f:\mathbb{R}^n \to \mathbb{R}$
The differentiate of $f$ where $f: \mathbb{R} \to \mathbb{R}^n$ is called the gradient of $f$ and is written $\nabla f$


$\nabla f := \begin{pmatrix} f_{a}, \cdots, f_{n} \end{pmatrix}$

  > Where $f_x$ is  $\frac{\partial f(a, \cdots n)}{\partial x}$ and $(a \cdots n)$ are the arguments of $f$ 

## Differentaites of $\vec{F}: \mathbb{R}^m \to \mathbb{R}^n$

$\vec{F}( x_1 \cdots x_n)= \begin{pmatrix} f_1(x_1, \cdots x_n) \\ \vdots \\ 
f_m(x_1 \cdots x_n)\end{pmatrix}$

$\Rightarrow \vec{F}'( x_1 \cdots x_n) = \begin{pmatrix} \nabla f_1(x_1, \cdots x_n) \\ \vdots \\ \nabla f_m(x_1 \cdots x_n)\end{pmatrix}$


|]]

productRules :: Text
productRules = [r|

# Product rules
$\vec{F},\vec{G} : \mathbb{R}^n \to \mathbb{R}^m$ and $f:\mathbb{R}^n \to \mathbb{R}$

* **(i)** $(\vec{F} \cdot \vec{G}) '= \vec{F}^T \vec{G}' + \vec{G}^T \vec{F}'$
* **(ii)** $a (\vec{F} + b \vec{G}' = \vec{F})' + b\vec{G}' \forall a,b \in \mathbb{R}$
* **(iii)** $(f\vec{F})' = f\vec{F}' + \vec{F}f'$

$\vec{F}, \vec{G} : \mathbb{R} \to \mathbb{R}^3$

* **(iv)** $(F \times G)' = F \times G' + F' \times G$ 

The proofs are all simple evalution of the indivdiual components of each part.
|]

twoDTan :: Text
twoDTan = [r|
# Tangents

[To find]{.smallcaps}
the tangent of a equation.

* Take the vector equation of a parametric equation $\vec{F}(t)$ at $t_0$

* The point of the line is given by $\vec{F}(t_0)$ 
* The Direction is given by the derivative of the function times some vector or perameter u^[get better wording]
$T(u) = \vec{F}(t_0) + d\vec{F}(t_0 ; u)$
$= \vec{F}(t) + \vec{F}' \cdot u$
|]

tSeries :: Text
tSeries = [r|
Taylor  series:

  $f(x) = \sum_{n=0}^\infty \frac{f^{(n)}(a)}{n!} (x -a)^n$

  $\vec{f}(\vec{x}+\vec{h})= f(x)$
Try find another explaination or consult
|] 

