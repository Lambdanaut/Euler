module Main where

main = putStrLn $ show $ head $ dropWhile (\x -> not $ all (\y -> x `mod` y == 0) [20,19..11] ) [2520,5040..]
