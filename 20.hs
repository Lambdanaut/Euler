module Main where

main = putStrLn $ show $ sum $ map (\x -> read [x] :: Int) $ show $ (product [1..100])
