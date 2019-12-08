-- Problem 5:
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

module Euler.Problems.Group1To50.P5 (
    lcmTo20
) where

import Euler.Utils.Math.Multiple(lcmOfList)

lcmTo20 :: Int
lcmTo20 = lcmOfList [1..20]