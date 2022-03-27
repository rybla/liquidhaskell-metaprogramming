{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}

module Tactic.Test where

import Language.Haskell.TH
import Language.Haskell.TH.Quote
import Language.Haskell.TH.Syntax
import Tactic.TestTH

f x = $(spliceName "x")

handleDec
  [d|
    g :: Int -> Int
    g = _
    |]
