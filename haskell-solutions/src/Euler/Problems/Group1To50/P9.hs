-- Problem 9:
-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.

module Euler.Problems.Group1To50.P9 (
    tripleProduct
) where

import Euler.Utils.Math.Pythagoras(pythagoreanTriple)


tripleProduct :: Int
tripleProduct =
    let goalSum   = 1000
        isGoalSum = (\(a,b,c) -> a+b+c == goalSum)
        limit     = 100   -- arbitrary limit
        mnPairs   = [(a,b) | a <- [2..limit], b <- [1..limit], a > b]
        triples   = map (\(m, n) -> pythagoreanTriple m n) mnPairs
    in (\(a,b,c) -> a*b*c) $ head $ filter isGoalSum triples