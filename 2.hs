module Main where

fib x y = x : fib y (x+y)
main = putStrLn $ show $ sum $ filter even $ takeWhile (<= 4000000) $ fib 1 2
