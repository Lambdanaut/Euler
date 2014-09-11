module Main where

divisors :: Int -> [Int]
divisors x = filter (\z -> x `mod` z == 0 ) [1..(x`div`2)]

d :: Int -> Int
d x = sum $ divisors x

amicable :: Int -> Bool
amicable x = (d.d $ x) == x && x /= (d x)

main = return $ sum $ filter amicable [0..10000] 
