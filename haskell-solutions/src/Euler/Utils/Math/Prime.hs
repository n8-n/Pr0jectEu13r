module Euler.Utils.Math.Prime (
    isPrime,
    primesInfinite
) where

    
isPrime :: Int -> Bool
isPrime n = 
    let greaterThanHalf x = (fromIntegral x) > (fromIntegral n/2)
        primeIterate i
            | greaterThanHalf i = True
            | n `mod` i == 0    = False
            | otherwise         = primeIterate (i+1)
    in primeIterate 2

primesInfinite :: [Int]
primesInfinite = filter isPrime [2..]