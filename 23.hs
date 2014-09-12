module Main where

divisors :: Int -> [Int]
divisors x = filter (\z -> x `mod` z == 0 ) [1..(x`div`2)]

abundants :: [Int]
abundants = filter (\x -> x < (sum $ divisors x)) [1..]

main = return $ sum $ filter (\x -> [a <- (takeWhile (<x) abundants)]) [0..28123]

