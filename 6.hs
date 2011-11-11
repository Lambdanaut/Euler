module Main where

main = putStrLn $ show $ (sum [1..100])^2 - sum[x ^ 2 | x <- [1..100]]
