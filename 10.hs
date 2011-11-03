module Main where
import Data.Numbers.Primes

main = putStrLn $ show $ sum $ takeWhile (< 2000000) primes
