module Euler.Utils.Math.Multiple (
    gcd',
    lcm',
    lcmOfList
) where

-- Euclid's Algorithm
gcd' :: Int -> Int -> Int
gcd' a 0 = a 
gcd' a b = gcd' b (a `mod` b)

-- lcm(a,b) = a*b / gcd(a,b)
lcm' :: Int -> Int -> Int
lcm' 0 0 = 0
lcm' a b = quot (a * b) (gcd' a b)

-- lcm(a,b,c) = lcm(a, lcm(b,c))
lcmOfList :: [Int] -> Int
lcmOfList []     = 1
lcmOfList (n:ns) = lcm' n $ lcmOfList ns