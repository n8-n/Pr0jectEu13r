module Euler.One
(
    sumMultiples3or5,
    sumFibEven,
    fibonacci,
    isPrime,
    primesInfinite,
    primeFactors
) where


-- Problem 1: 
-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
sumMultiples3or5 :: Int -> Int
sumMultiples3or5 num = 
    let isMultiple a = (a `mod` 3 == 0) || (a `mod` 5 == 0)
    in sum [x | x <- [0..num-1], isMultiple x]



-- Problem 2:
-- By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
sumFibEven :: Int -> Int
sumFibEven limit =
    let fibNumbers = takeWhile (<limit) fibInfinite 
    in sum [x | x <- fibNumbers, even x]

fibonacci :: Int -> [Int]
fibonacci n = take (n+1) $ fibInfinite

fibInfinite :: [Int]
fibInfinite = 
    let fibInner a b = a: fibInner b (a+b)
    in fibInner 0 1



-- Problem 3:
-- What is the largest prime factor of the number 600851475143?
-- https://www.mathsisfun.com/prime-factorization.html
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

-- get last of this for answer
primeFactors :: Int -> [Int]
primeFactors n = 
    let modN x   = n `mod` x == 0
        factor   = head $ filter modN primesInfinite
        quotient = n `div` factor
        recurse  = factor: primeFactors quotient
    in (if n == factor then [factor] else recurse)