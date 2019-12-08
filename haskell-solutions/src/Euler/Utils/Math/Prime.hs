module Euler.Utils.Math.Prime (
    isPrime,
    primesInfinite,
    primeFactors
) where

    
isPrime :: Int -> Bool
isPrime 1 = True
isPrime n = 
    let greaterThanHalf x = (fromIntegral x) > (fromIntegral n/2)
        primeIterate i
            | greaterThanHalf i = True
            | n `mod` i == 0    = False
            | otherwise         = primeIterate (i+1)
    in primeIterate 2

primesInfinite :: [Int]
primesInfinite = filter isPrime [2..]

primeFactors :: Int -> [Int]
primeFactors 1 = [1]
primeFactors n = 
    let modN x   = n `mod` x == 0
        factor   = head $ filter modN primesInfinite
        quotient = n `div` factor
        recurse  = factor: primeFactors quotient
    in (if n == factor then [factor] else recurse)