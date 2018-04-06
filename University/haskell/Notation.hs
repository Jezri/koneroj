{-# LANGUAGE QuasiQuotes, OverloadedStrings #-}
module Notation (fullNotation,
                  absoluteValue,
                  deffinition,
                  introductoryAnalysisNotation,
                  macroEconomics
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

macroEconomics :: Text
macroEconomics = [r|

# Macro Economic Terms

GDP 
: A monatary measure of the total market value of final goods and services produced in a country in a given period of time.

**VAT is included in GDP as a cost of production?**
    This can be calculated in three ways
    
    * Income to all factors of production for produceing the goods and services
        + Compensation for employees
        + Rent
        + Interest
        + Proprietors income (unincorporated busnessess)
        + Corporate Profits
          - Corporate income taxes ? why not add taxes in general rather than just not deduct them?
          - dividends
          - retained profits
    * Output (Value added) measured as value added at all levels of production
    * Expenditure on final goods and services produced within a country ^[eports - imports]
      Also includes investment in new capitial equipment and real estate a minus depreciation^[Where is depreciation accounted fro in the other two apporchers?]

         This is the same as the expenditure or damand function function

          +  $E = C + I + G +(X - M)$

> GDP Excludes
> 
> * Public transfer payments
> * Private Trasnfer payments
> * Sales of stocks and bonds
> * Second hand sales

NI 
: All income earned by domestic-supplied resouces. (Those owned by citizens?)
  
  Calculating NI from GDP

  * Subtract Vat from GDP 
  * 

GNP 
: The total value of goods and services produced by a countries citizens within a given period of time.

Real GDP
: Inflation adjusted GDP

Nominal GDP
: GDP measured in the market prices of the current year.

NDP
: Includes factor depreciation
|]

deffinition :: (Text, Text)
deffinition = (title, txt)
  where
    title = [r|Definition|]
    txt = [r| $:=$ (is defined as)|]
