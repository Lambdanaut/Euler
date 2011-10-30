module Main where

primes = filter (\x -> 0 == (length $ filter (\y -> x `mod` y == 0) [2..(x-1)]) ) [2..]
main = putStrLn $ show $ filter (\x -> 600851475143 `mod` x == 0) $ take 900 primes
