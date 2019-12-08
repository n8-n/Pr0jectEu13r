module Euler.Problems.Group1To50.P4 (
    isPalindromeNumber,
    palindromeNumbers3Digits
) where


-- Problem 4:
-- Find the largest palindrome made from the product of two 3-digit numbers.
palindromeNumbers3Digits :: Int
palindromeNumbers3Digits = 
    let range = numberProducts 100 999
    in  maximum $ filter isPalindromeNumber range

numberProducts :: Int -> Int -> [Int]
numberProducts start end = 
    let products = [x * start | x <- [start..end]]
        recurse  = numberProducts (start + 1) end
    in if start == end then products else products ++ recurse

isPalindromeNumber :: Int -> Bool
isPalindromeNumber n = let sn = show n in sn == (reverse sn)