module Euler.Utils.String.Number (
    stringProduct
) where

import Data.Char(digitToInt)

stringProduct :: String -> Int
stringProduct = foldl (\acc n -> (digitToInt n) * acc) 1