module Main where

triangleNumbers = tail $ scanl (+) 0 [1..]
factors n = filter (\x -> 0 == n `mod` x) [1..(n `div` 2)] 
main = putStrLn $ show $ takeWhile (<200) $ map (length.factors) $ triangleNumbers

