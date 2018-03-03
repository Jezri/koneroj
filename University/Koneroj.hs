{-# LANGUAGE QuasiQuotes, OverloadedStrings #-}
module Koneroj (mdFold,
                mdToLaTeXFold,
                mdToLaTeX,
                mdToLaTeXBook,
               -- ioTextFold,
                sectionAbstract,
                latexToFile,
                inGlossary,
                inSidenote
)
  where

import Control.Monad
import NeatInterpolation (text)
import Text.Pandoc
import Data.Text (Text, unpack, pack)
import qualified Data.Text.IO as T
import Prelude
import System.IO
import Raw

mdFold :: [Text] -> Text
mdFold txts = pack $ foldr (++) "" $ map unpack txts
 
mdToLaTeXFold :: [Text] -> IO Text
mdToLaTeXFold xs = do 
  ys <- mapM mdToLaTeX xs
  let xs = map unpack ys
  let as = foldl (++) "" xs
  let bs = pack as
  return bs

mdToLaTeX :: Text -> IO Text
mdToLaTeX txt = runIOorExplode$
  readMarkdown def{readerExtensions = pandocExtensions } txt 
  >>= writeLaTeX def{ writerReferenceLinks = True}

mdToLaTeXBook :: Text -> IO Text
mdToLaTeXBook txt = runIOorExplode$
  readMarkdown def{readerExtensions = pandocExtensions} txt
  >>= writeLaTeX def{writerTopLevelDivision = TopLevelPart}

sectionAbstract :: Text -> IO Text
sectionAbstract txt = do
  l <- mdToLaTeX txt
  let x = "\\begin{small}" ++ (unpack l)  ++ "\\end{small}"
  let y = pack x
  return y

latexToFile :: [Char] -> IO Text -> IO ()
latexToFile filename txt = do  
  handle <- openFile filename WriteMode
  hPutStr handle $ unpack myTufte
  a <- txt
  hPutStr handle $ unpack a
  hPutStr handle "\\end{document}"
  hClose handle

myTufte :: Text
myTufte = [r|
\documentclass{tufte-book}
\usepackage{titling}
\usepackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\rhead{\thesection}
\lhead{}
\rfoot{\color{titlecolor}{ Page \thepage}}
\usepackage[parfill]{parskip}
\usepackage{verbatim}
\usepackage{mystyle}
\usepackage{natbib}
\usepackage{amsmath}
\usepackage{longtable}
\everymath{\displaystyle}
\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}
\begin{document}
|]

   
inGlossary :: (Text ,Text)-> Text
inGlossary (title, txt) = pack (ftitle ++ ftxt)
  where ftitle = "\n **" ++ unpack title ++ "** \n"
        ftxt = "\n" ++ unpack txt ++ "\n"

inSidenote :: (Text, Text) -> Text
inSidenote (title, txt) = pack $ "^[" ++  ftitle ++ ftxt ++ "]"
  where ftitle = "**" ++ unpack title ++"**"
        ftxt = unpack txt


