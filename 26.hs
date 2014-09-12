module Main where

{-
 - Algorithm
 - =========
 -  1. Find first digits in dividend that are greater than divisor
 -  2. Find quotient of divisor and first digits. Append Quotient to result quotient.
 -  3. Subtract quotient from first digits
 -  4. "Drop down" next digit of dividend by appending it to the difference
 -  5. Set the result of step 4 to be the new 
 - 
 -}

remainder :: Double -> Double -> Double -> Int
remainder dividend divisor precision = length $ takeWhile (<=firstRemainder*(10**precision)) $ iterate (+divisor) $ divisor
  where firstRemainder = (dividend-) $ last $ takeWhile (<=dividend) $ iterate (+divisor) divisor

{-
digits :: Integer -> [Integer]
digits val = map (\x -> read x) $ scanl (\x y -> x ++ [y]) [head $ show val] (tail $ show val)

firstDivisor :: Integer -> Integer -> [Integer]
firstDivisor dividend divisor = dropWhile (<divisor) $ digits dividend

long_division :: Integer -> Integer -> [Char]
long_division dividend divisor = []
  where
    s_dividend = show dividend
    s_divisor = show divisor
-}
