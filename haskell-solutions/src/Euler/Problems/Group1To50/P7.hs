-- Problem 7: 
-- What is the 10 001st prime number?

module Euler.Problems.Group1To50.P7 (
    prime10001
) where

import Euler.Utils.Math.Prime(primesInfinite)

prime10001 :: Int
prime10001 = primesInfinite !! 10000