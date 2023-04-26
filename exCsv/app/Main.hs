module Main where
import HaskellSay (haskellSay)

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

import Text.CSV
import GHC.Generics
import System.IO.Unsafe
import System.IO

data People = People { 
 identifier :: Int,
 name :: String
} deriving (Show, Generic)

    
