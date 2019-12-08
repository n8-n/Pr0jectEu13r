module Euler.Problems.Group1To50.P3 (
    primeFactors
) where

import Euler.Utils.Math.Prime

-- Problem 3:
-- What is the largest prime factor of the number 600851475143?
-- https://www.mathsisfun.com/prime-factorization.html

-- get last of this for answer
primeFactors :: Int -> [Int]
primeFactors n = 
    let modN x   = n `mod` x == 0
        factor   = head $ filter modN primesInfinite
        quotient = n `div` factor
        recurse  = factor: primeFactors quotient
    in (if n == factor then [factor] else recurse)