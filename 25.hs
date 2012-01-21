module Main where

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
main = print $ length $ takeWhile (\ i -> 1000 > (length $ show i)) fibs