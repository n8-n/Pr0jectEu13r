-- Problem 3:
-- What is the largest prime factor of the number 600851475143?
-- https://www.mathsisfun.com/prime-factorization.html

module Euler.Problems.Group1To50.P3 (
    largestPrimeFactor
) where

import Euler.Utils.Math.Prime(primeFactors)


largestPrimeFactor :: Int -> Int
largestPrimeFactor n = last $ primeFactors n