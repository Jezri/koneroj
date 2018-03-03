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

main :: IO () 
main = do 
  let a = mdToLaTeXFold[macro, islm ,financialMarket]
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
  To measure the GDP^[ GDP and total demand(Z) are used interchangably]
 it is simplest to measure the amount spent on goods and services and then subtract the part of that which is spent on goods and services produced outside the economy (imports) or before the given year (invetories). Finaly goods not bought in the bought elsewhere (exports) or stored for the future are added.^[Exports and inventories are ignored in the begining part of the course]

  * Consumption(C): The goods and services purchased by consumers
  * Investment(I): The sum of
    + no-resedential investment: Capital equipment and land bought by firms
    + resedntial investment: Housing bought by consumers
  * Goverment spending(G): The amount the goverment spendings buying goods and services from firms and employing workers. (goverment tranfers are not payments for work done and are not included)
  * Net exports (X-I): The total amount of exports minus imports.
  * Net inventory build up

This brings us to the equation
$Z = C + I + G$

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

islm :: Text
islm = [r|

# ISLM model

The ISLM model models the equilibrium for income and interest rates, the quintity of money supplied and consumption. 

This is represented by the intersenctoin of the IS curve which shows the resultant intrest rates for all equilibriums between money demand which is a function of income and money supply, and the LM curve which represents all the points of equilibrium (where consumption is equil to output and no inventories are built up or depleted) and consuption (which contains investment which is a function of interest rates) 

## First modle

> ** Assumption **
> The economy is closed and there is no public sector(taxation or gorverment spending)


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
