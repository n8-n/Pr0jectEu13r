module Euler.Utils.Math.Fibonacci (
    fibonacci,
    fibonacciInfinite
) where


fibonacci :: Int -> [Int]
fibonacci n = take (n+1) $ fibonacciInfinite
    
fibonacciInfinite :: [Int]
fibonacciInfinite = 
    let fibInner a b = a: fibInner b (a+b)
    in fibInner 0 1