{-# LANGUAGE QuasiQuotes, OverloadedStrings #-}
module Preamble (myTufte)
  where

import NeatInterpolation (text)
import Data.Text (Text, unpack)
import Raw

myTufte :: Text
myTufte = [r|
\documentclass{tufte-handout}
\usepackage{titling}
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

