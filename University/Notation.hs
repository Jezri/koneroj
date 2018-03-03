{-# LANGUAGE QuasiQuotes, OverloadedStrings #-}
module Notation (fullNotation,
                  absoluteValue,
                  deffinition,
                  introductoryAnalysisNotation
                )
  where

import NeatInterpolation (text)
import Data.Text (Text, unpack, pack)
import Raw
import Koneroj (mdFold, inGlossary, inSidenote)

absoluteValue :: (Text, Text)
absoluteValue = (title, txt)
  where
    title = [r|Absolute value|]
    txt = [r|

$|a| \forall a \in \mathbb{R} := \begin{cases} a \geq 0 \quad = a \\ a < 0 \quad -a \end{cases}$ 

 |] 
introductoryAnalysisNotation :: Text
introductoryAnalysisNotation = [r|
# Glossary

Bound
: The bound of a set is a number such that all numbers in the set are less than or greater than the set. A bound is not unique.

Supremum
: The supereme or infamium of a set the least upper bound or the greatest lower bound and is unique

Maximum and miniumium
: If the superium or infaium are elements of the set than they are the max and miuminium otherwise there is no maxium or mimiumum 
|]

fullNotation :: Text
fullNotation = mdFold [title, inGlossary(deffinition), txt]
  where title = [r|

# Full Notation

|]
        txt = [r| 

$\nabla := \begin{pmatrix} \frac{\partial}{\partial x_1} \\ \vdots \\ \frac{\partial}{\partial x_n}\end{pmatrix}$ 

$\nabla \vec{F} := \begin{bmatrix} \frac{\partial f}{\partial x_1} \\ \vdots \\ \frac{\partial f}{\partial x_n}\end{bmatrix}$ **This is only defined for $\mathbb{R}^n \to \mathbb{R}$**

$\text{div} \vec{F} := \nabla \cdot \vec{F}$ **This is definied** 
$(a)_4$

**Laplacian**
$\nabla ^2 f = \nabla \cdot \nabla f = \sum_{j=1}^n \frac{\partial ^2 f}{\partial x^2_j}$

**Curl for $\vec{F} : \mathbb{R}^3 \to \mathbb{R}^3**
$\text{curl} \vec{X} = \nabla \times \vec{F}$ 
|]

deffinition :: (Text, Text)
deffinition = (title, txt)
  where
    title = [r|Definition|]
    txt = [r| $:=$ (is defined as)|]
