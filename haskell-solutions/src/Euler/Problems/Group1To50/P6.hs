-- Problem 6: 
-- Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

module Euler.Problems.Group1To50.P6 (
    sumSquares,
    squareSum,
    diffSumNSquares
) where


-- https://en.wikipedia.org/wiki/Square_pyramidal_number
sumSquares :: Int -> Int
sumSquares n = div ((n * (n + 1)) * ((2 * n) + 1)) 6

-- https://en.wikipedia.org/wiki/Triangular_number
squareSum :: Int -> Int
squareSum n = (div ((n^2) + n) 2)^2

diffSumNSquares :: Int -> Int
diffSumNSquares n = (squareSum n) - (sumSquares n)