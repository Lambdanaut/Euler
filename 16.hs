module Main where

main = putStrLn $ show $ sum $ map (\x -> read [x]) $ show $ 2^1000
