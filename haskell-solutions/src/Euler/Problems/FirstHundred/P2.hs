module Euler.Problems.FirstHundred.P2 (
    sumFibEven
) where

import Euler.Utils.Math.Fibonacci

-- Problem 2:
-- By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
sumFibEven :: Int -> Int
sumFibEven limit =
    let fibNumbers = takeWhile (<limit) fibonacciInfinite 
    in sum [x | x <- fibNumbers, even x]