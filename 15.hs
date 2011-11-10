module Main where

pascal = iterate (\xs -> zipWith (+) (0:xs) (xs++[0]) ) [1]
main = putStrLn $ show $ (last $ take 41 pascal) !! 20
