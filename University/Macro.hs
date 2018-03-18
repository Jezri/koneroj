{-# LANGUAGE QuasiQuotes, OverloadedStrings #-}
import NeatInterpolation (text)
import Text.Pandoc
import Data.Text (Text, unpack)
import qualified Data.Text.IO as T
import Prelude
import System.IO
import Raw
import Preamble
import Koneroj
import Notation (macroEconomics)

main :: IO () 
main = do 
  let a = mdToLaTeXFold[macro, islm ,money ,financialMarket, bonds, macroEconomics]
  latexToFile "Macro.tex" a


macro :: Text
macro = [r|
Macro Economics
===============

GDP
--------------
GDP(Gross Domestic product)

: The Total amount of goods and services produced within an economy in a given year [^longnote]

[^longnote]: 
    There are three ways of culculating this      
   
    * Expenditure : This must only include expenditure on goods and services produced within the economy (no imports, and no goods produced in a previous year)

    * Income : This must only use income obtained by selling goods and services (no transfer payments)
    
    * Output



# GDP composition

Value added production aproach

* Value added to second hand goods is included
  To measure the GDP^[ GDP and total demand(Z) are used interchangably]

 it is simplest to measure the amount spent on goods and services and then subtract the part of that which is spent on goods and services produced outside the economy (imports) or before the given year (invetories). Finaly goods not bought in the bought elsewhere (exports) or stored for the future are added.^[Exports and inventories are ignored in the begining part of the course]

**Indirect taxes - subsidies are included as are added buisness cost**

* Consumption(C): The goods and services purchased by consumers
* Investment(I): The sum of
  + no-resedential investment: Capital equipment and land bought by firms
  + resedntial investment: Housing bought by consumers
  + Depreciation is added to net investment
* Goverment spending(G): The amount the goverment spendings buying goods and services from firms and employing workers. (goverment tranfers are not payments for work done and are not included)
* Net exports (X-I): The total amount of exports minus imports.
* Net inventory build up


This brings us to the equation
$Z = C + I + G$

**Income Aproach**

* Wages
* Buisness Profits
* interest
* Coporate profits and retained earnings
* add depreciation, as some of this income was for mainting and replacing brocken goods.
* Add net forign income (income from abroad is inculded in gdp)

**GDP and GNI are the same**

## Consumption
Consumption is a function of disposable income ^[income minus taxation] ($Y_D$)
$$ C(Y_D) $$

Unemployment
-------------

Inflation
-----------

Philips curve
-------------
|]

money :: Text
money =[r|
# Money

> H_d = C_d + R_d

The amount of central bank money demanded is the sum of central bank money demanded by conumers as cash and the amount required by privatre banks for Resverves

> R_d = \theta(1-c)M_d where theta is the required reserve ratio.

|]
islm :: Text
islm = [r|

# ISLM model

> * *i* $Y=E$ in equilibrium
> * *ii* $Y \equiv C + S + T$ an accounting defintion
> *iii* $Y \equiv C + I_r + G$ where $I_r$ is realized spending.
>   + This includes build up and depletion of inventories
>   + At equilibrium in the goods market planed investment is equal to realized investment.
> *iv* $Y=E \leftrightarrow C + I_r + G = C +I + G \leftrightarrow I_r=I$ there are no unplanned build ups of inventories at equilibrium 
> *  leaks = injections **(i, ii, iii)

> **Consumption functions**
> *i* $C = c_1 + c_2 Y_D \quad c_1 > 0 \quad 0 < c_2 < 1$

> **Equilibrium income**
> 
> *i* $Y = \frac{1-c_2}( c_1 - c_2 + I + G)$ from combining previous equaitions
The ISLM model models the equilibrium for income and interest rates, the quintity of money supplied and consumption. 

This is represented by the intersenctoin of the IS curve which shows the resultant intrest rates for all equilibriums between money demand which is a function of income and money supply, and the LM curve which represents all the points of equilibrium (where consumption is equil to output and no inventories are built up or depleted) and consuption (which contains investment which is a function of interest rates) 

## First model

> ** Assumption **
> The economy is closed and there is no public sector(taxation or gorverment spending)

![IS](pics/LM.jpg){width=100%, height=100%}

## The IS curve give all points of equilibrium in the financial market
![LM](pics/IS.jpg){width=100%, height=100%}

|]

financialMarket :: Text
financialMarket = [r|

# Financial Markets

## The Demand for money

Is the demand for liquidity and comes from people wanting to make purchases with that money.

## Supply of money

The supply of money is modeled as a constant $M$ and supplied by the centerall bank

## Monatary policy and open market operations 58 

|]

bonds :: Text
bonds = [r| 

# Bonds

Bonds have 

* $P$ a face value that they are sold and rebought by the issuer
* $i$ an interest rate paid repesenting the charge per unit currency borrowed paid by the bonds issueur to the bonds owner.

In the market for bonds 

* $i_e$ is the equilibrium interest rate for bonds of a ccertain risk.

No bonds will be bought by from sellers selling assets yeilding bellow this interest rate.

This means that the asset must be sold at a maket price $P_m$ such that the interest it yeilds $Pi$ is the equilibrium rate of interest $i_e$

$\frac{Pi}{P_m} = i_e$

This give a counterintuitive result that the market prce and the market interest rates are  inversly related. If the interest rate on a bond has increased this would seem to make it more disarable and so increase its prices, but this is not what has happened. Other bonds of similar risk are being sold on the market at higher interest rates, (Or lower costs and set interet) while the bond retains the same interst.

> **Why is the demand for bonds not the same as the demand for money.**
> * If there are more people who want money than bonds at a current interest rate.
>
> * This is repesented by a shift right in the supply of bonds as more people want to sell.
> *There are sellers willing to sell goods below the old equilbrium price and stuggling to sell at that price and more buyers who would buy if the price were slightly less.
> * A may buy a bond from B for some money.
> * B will than use the money for purchase no finacnail goods from C.
> * C will than buy more bonds from D with the same money, in the same period of time. 
|]

