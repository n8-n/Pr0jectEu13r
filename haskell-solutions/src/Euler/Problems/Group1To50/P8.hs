-- Problem 8: 
-- Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?

module Euler.Problems.Group1To50.P8 (
    problem8
) where

import Euler.Utils.String.Number(stringProduct)
import Data.List.Split(divvy)

-- uses divvy from Data.List.Split:
-- "Divides up an input list into a set of sublists, according to n and m input specifications you provide. 
-- Each sublist will have n items, and the start of each sublist will be offset by m items from the previous one."
problem8 :: IO ()
problem8 = do
    result <- fmap highestProdInString $ readFile "src/resources/p8.txt"
    putStrLn $ show result

highestProdInString :: String -> Int
highestProdInString str = 
    let chunksOf13 s = divvy 13 1 $ filter (/= '\n') s
    in  maximum $ map productFromChunk $ chunksOf13 str

productFromChunk :: String -> Int
productFromChunk chunk
    | length chunk < 13 = 0
    | otherwise         = stringProduct chunk