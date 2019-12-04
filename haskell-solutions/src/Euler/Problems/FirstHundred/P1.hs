module Euler.Problems.FirstHundred.P1 (
    sumMultiples3or5
) where

-- Problem 1: 
-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
sumMultiples3or5 :: Int -> Int
sumMultiples3or5 num = 
    let isMultiple a = (a `mod` 3 == 0) || (a `mod` 5 == 0)
    in sum [x | x <- [0..num-1], isMultiple x]