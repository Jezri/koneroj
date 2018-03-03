{-# LANGUAGE QuasiQuotes, OverloadedStrings #-}
module MathNotes(
  fieldAxioms,
  realAxioms,
  )where

import NeatInterpolation (text)
import Data.Text (Text, unpack, pack)
import Raw

fieldAxioms :: Text --Markdown
fieldAxioms = [r|
Field
: A set $F$ of with two opperators $+$ and $\cdot$ such that $\forall f_1, f_2, f_3 \in F$

  * Addition  
    + **(A1)** $(f_1+f_2)+f_3 = f_1 + (f_2 + f_3)$ Addition is associative
    + **(A2)** $f_1+f_2 = f_1+f_2$ Addition is comutitive
    + **(A3)** $\exists 0 | f_1 + 0 = f_1$ Indentity of addition
    + **(A3)** $\exists -f_1 | f_1 + (-f_1) = 0$


  * Multiplication
    + **(M1)** $(f_1 f_2) f_3 = f_1 (f_2 f_3)$ Multiplication is associative
    + **(M2)** $f_1 f_2 = f_1 f_2$ Multiplication is comutitive
    + **(M3)** $\exists 1 \neq 0 | f_1 \dot 1 = f_1$ Indentity of addition
    + **(M4)** $(\forall f_1 \in F | f_1 \neq 0) \exists f_1^{-1} | f_1 ( f_1^{-1}) = 1$
  * Distrabution
    + **(D1)** $f_1(f_2+f_3)=f_1f_2 + f_1f_2$ multiplication is distributive over addition
|]

realOrder :: Text --Markdown
realOrder = [r|

[Axioms of comparison]{.smallcaps}

* Order^[Let $r_1 r_2 \in \mathbb{R}$ then $r_1$ is called larger than $r_2$ written $r_1 > r_2$ if $r_1 - r_2 > 0$ ]
  + **(O1)** The trichotomy property of reals. 
    - $\left( \forall r \in \mathbb{R} \right)$  exactly one is true
    - $a > 0 \quad a = 0 \quad a < 0$

  +  **(O2)** $a > 0 \wedge b > 0 \quad \to \quad  a + b >0$ 

  + **(O3)** $a > 0 \wedge b > 0 \to ab >0$ 

|]

diedekinCompletenessAxiom :: Text
diedekinCompletenessAxiom = [r| 
[Diedekin completeness axiom]{.smallcaps}

* Completeness
  + **(C)** All bounded sets have superium and infamium 
|] 

realAxioms :: Text --Markdown
realAxioms = pack $ foldl (++) "" $ map unpack [realHead , fieldAxioms, realOrder, diedekinCompletenessAxiom ]

realHead :: Text -- Markdown
realHead = [r| 

## Axioms of the reals 

The real numbers are a field which also has ordered and diedekin complete 

|]

