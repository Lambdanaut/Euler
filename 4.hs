module Main where

isPalin x = x == (read (reverse $ show x) :: Int) 
main = putStrLn $ show $ last $ filter isPalin [x*y | x <- [900..999], y <- [900..999]]

