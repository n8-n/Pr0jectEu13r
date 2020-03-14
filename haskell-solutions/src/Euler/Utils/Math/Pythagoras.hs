module Euler.Utils.Math.Pythagoras (
    pythagoreanTriple
) where


-- Euclid's formula
-- Generates Pythagorean triple from two arbitrary integers.
-- a = m^2 - n^2, b = 2mn, c = m^2 + n^2, for m > n > 0
pythagoreanTriple :: Int -> Int -> (Int, Int, Int)
pythagoreanTriple m n 
    | (m <= n) || (n <= 0) = (0, 0, 0)
    | otherwise            = (a, b, c)
        where a = m^2 - n^2
              b = 2 * m * n
              c = m^2 + n^2