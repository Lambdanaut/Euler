module Main where
import Data.List

main = putStrLn $ show $ last $ take 1000000 $ sort $ permutations [0..9]
