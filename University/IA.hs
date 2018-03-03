{-# LANGUAGE QuasiQuotes, OverloadedStrings #-}
import NeatInterpolation (text)
import Text.Pandoc
import Data.Text (Text, unpack)
import qualified Data.Text.IO as T
import Prelude
import System.IO
import Raw
import MathNotes as MN
import Notation
import Koneroj

main :: IO () 
main = do  
  let a = mdToLaTeXFold[introAnalysis, 
                        proofTechniques, 
                        [r|# Reals 1 |], 
                        realAxioms,
                        realComparison, 
                        absoluteValue', 
                        positiveRoots,
                        introductoryAnalysisNotation, 
                        inGlossary(absoluteValue)
                        ]
  latexToFile "IA.tex" a


introAnalysis :: Text
introAnalysis = [r|
Introductory Analysis 
=======================

|]

proofTechniques :: Text
proofTechniques = [r| 
# Proof Techniques

## Proof of uniquesness
Assume two seperate elements with the requiered property and than proove that they must be equal to eachother.

## Proof by contradiction
Assume that a false stament is true and show that this results in a contradiction

|]
realComparison :: Text
realComparison = [r|

Find the defintion of a monotonic transformation

## Collararies


b) $a < b \wedge b < c \to a < c\quad$ transitivty^[sort of]

[Proof]{.smallcaps}[^geq]

>  
>  $b > a \Leftrightarrow b-a \geq 0$ **(i)**
> 
>  $b -c \geq 0$ **(ii)**
>
>  combining i and ii with previous theorem $(b-a) + c - b \geq 0$
>  $a - c \geq 0$ (addition axioms)
>  $c \geq 0$

[^geq]: [Definitions]{.smallcaps} 

    *  $r_1 \geq b \Leftrightarrow a > b \wedge a = b$
    *  $a \leq b \Leftrightarrow a = b \wedge a < b$


[Proof]{.smallcaps}
by contradiction
$a > 0 \Leftrightarrow a^{-1} > 0 \wedge a < 0 \Leftrightarrow a^{-1} < 0$

>
> **Case** $a > 0$
>
> > **(i)** $a \neq 0$ **Trichotomy**  
> > **(ii)** $\exists a^{-1}$ **(M3)** $\wedge$ **(i)**
> >
> > **Case** $a^{-1} < 0$
> >
> > > #. $-a^{-1} > 0$ **(a)**
> > > #. $-a^{-1} \cdot a > 0$ **(O3)**
> > > #. $-1 > 0$ **Contradiction** 
> >
> > **Case** $a^{-1} = 0$
> > > #. $1 = a \cdot a^{-1}$ **(M3)**
> > > #. $= 0$ **(Multiplication by zero)** **Contradiction** 
> >
> > **Conculsion** $a > 0 \Leftrightarrow a^-1 >0$
> 
> **Case** $a < 0$
>
> > **(i)** $a \neq 0$ **Trichotomy**  
> > **(ii)** $\exists a^{-1}$ **(M3)** $\wedge$ **(i)**
> > 
> > **Case** $a^{-1} = 0$
> > > #. $1 = a \cdot a^{-1} = 0$ **Contradiciton** **(Multiplication by zero)** **(M3)**
> >
> > **Case** $a^{-1} > 0$
> > > #. $-1 = -a a^{-1} > 0$ 
> 
> 

> $1 > 0$
> $a \neq 0 \to a^2 > 0$
> $use this to show 1 > 0$
>

|]

absoluteValue' :: Text
absoluteValue' = mdFold [title, inGlossary(absoluteValue), cororallaries]
  where 
    title =  [r|

## Absolute value

|]
    cororallaries = [r| 


[Properties]{.smallcaps}

* $|a| = 0 \Leftrightarrow a = 0$
  + if $a = 0 \to |a| = 0$  deffinition
  + if $|a| = 0 \to a = 0$  contrapositive


* $b |-a | = |-a|$ 
* use each three cases of dichotomy

* try d and e tutorial questions

## Trainagle inequality
$||a|+|b|| \geq |a| + |b|$

* $|a + b| \leq |a| + |b| tut$
* $| |a| - |b| \leq |a + b|$

proof

> * $a = a - b + b \to |a| = |a - b + b| = |a-b| + |b|$
> * $b = b - a + a \to |b| = |b - a + a| = |b-a| + |a|$
> * by c $|b| \leq |a - b| + |a| \to |b| \leq |b - a|$
> * combining
> * multiply ** $-1$ **
> * $|a - b| \leq |a| - |b| - |a - b| \leq |a| - |b| \leq a-b$ | by $d$
> * $\Leftrightarrow$ triangle inequility
 to proove with minus just sub in $-b$
>


|]

positiveRoots :: Text
positiveRoots = [r|

## Posittive Square Root

> $\forall (r \in \mathbb{R} | r \geq 0 ) \quad  \exists \left(  r^{\frac{1}{2}} \in \mathbb{R} | r^{\frac{1}{2}} \geq 0 \wedge\, \left(a^{\frac{1}{2}} \right)^2  = a \right)$ and $r^{\frac{1}{2}}$ is unique

[Proof]{.smallcaps}

* **Case** $r = 0$

  $0^2 = 0 \quad \wedge \quad 0 \geq 0 \quad \wedge \quad 0 \text{ is unique} \quad \Rightarrow \quad r^{\frac{1}{2}} = 0$


* **Case** $r > 0$
  + $\exists\, r^{\frac{1}{2}}$
    - $\exists S_s \, | \, S_s = \text{sup} S$ **(lemma 1, lemma 2, C)**^[ $S = \{ x \in \mathbb{R} \, | \, 0 <x, x^2 < 0 \}$] 
    - $\text{sup}S^2 = r$ **(lemma3)**
  + $r^{\frac{1}{2}}$ is unique**(lemma 4)**

> 
>   **lemma 1**  $S \neq \empty$ 
>
>    * **Case** $a < 1$
>      + $0 < a , a^2 < a \Rightarrow a \in S$  
>    * **Case** $a \geq 1$ 
>      + $0 < \frac{1}{2}, \frac{1}{2}^2 < a \Rightarrow \frac{1}{2} \in S$
>
> ------------------------------------

>    **lemma 2** $S$ is bounded
> 
>    * $a+1$ is a bound
>       + $(a + 1)^2$ is an upperbound of $S$
>         - $x > a+1 \Rightarrow x^2  > a^2 + 2a + 1 > 2a > a \Rightarrow x \nin S$ 
>   
> *****************************
 
> **lemma 3** $S_s^2 = r$
>
> Assume $S_s^2 \neq r$
>
> * **Case** $S_s^2 < a$
>   + **Contradiction** $S_s + \epsilon \in S$ for some $\epsilon > 0$ **(lemma 3.1)**
> * **Case** $S_s^2 < 0$
>   + **Contradiction** 
>
>       $S_s - \epsilon$ is an upperbound of $S$ for some $\epsilon > 0$ **(lemma 3.2)**
>
> *********************************

>  **lemma 3.1**
>
>  * Let $\epsilon = \text{min} \left\{ \frac{r-S_s}{4S_s}, S_s\right\}$
>
> ---------------------------    --------------------------------------------------
>    $(S_s + \epsilon)^2 - a$    $=S_s^2 -a + 2 (S_s\epsilon + \epsilon) \epsilon$
>                                $\leq S_s - a + (2 S_s + S_s)\frac{r-S_s^2}{4S_s}$
>
>                                $\leq \frac{1}{4}(S_s ^2 -r) < 0$ 
> ----------------------------  --------------------------------------------------
> * $(S_s + \epsilon)^2 < a$
>    
> **********************************

> **lemma 3.2**
>
> * Let $\epsilon = \frac{S_s^2 -r}{2S_s}$
> 
> --------------------------   ----------------------------------------------
>   $(S_s - \epsilon)^2 - a$   $= S_s^2 - 2 S_s \epsilon - \epsilon^2 -a$
>                              $> S_s^2 - 2 S_s \epsilon$
>                              $> 0$ **(Sub in $\epsilon$ and solve)**       
>         $(S_s-\epsilon)^2$   $> a
> --------------------------   -------------------------------------------- 
>
> * **Contradiction** $S_s- \epsilon$ is an upperbound less than $S_s$
>
> ***********************************************************

> **lemma 4**
>
>**(i)** $x^2 = r \quad y^2 = r \quad \wedge \quad r_1, r_2 > 0$
>
>**(ii)** $\, 0 = r - r = x^2 - y^2  = (x+y)(x-y)$ 
>
>**(iii)** $x + y >0$ **(i)**
>
>**(iv)**$x-y = 0$ **(iii, ii)**
>
>**Conclusion** $x=y$ So the posisitve square root is unique **(iv)** 
>
> *********************************************************************


|]

