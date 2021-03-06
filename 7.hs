module Main where

seiveOfEratosthenes :: Int -> [Int]
seiveOfEratosthenes range = getPrimes [2..range]
  where getPrimes (number:numbers) = number : (getPrimes $ filter (\n -> n `mod` number /= 0) numbers)
        getPrimes [] = []

main = putStrLn $ show $ (seiveOfEratosthenes 120000) !! 10000
