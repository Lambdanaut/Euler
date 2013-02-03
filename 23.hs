{-
This module works. I just know it does, okay. It works on smaller datasets, anyways! 
It just takes hours, days, weeks, months, or who knows how long to complete. 
I have re-written it twice using completely different algorithms. 
It's pissing me off and I'm done with it. 
I blame Data.List for being inefficient. 
I'm going to try to do it in Python.
Haskell I love you but this is not your shining moment
-}
module Main where
import Data.List

divisors :: Integer -> [Integer]
divisors x = filter (\y -> x `mod` y == 0) [1..x `div` 2]

abundant_number :: Integer -> Bool
abundant_number x = x < (sum $ divisors x)

abundant_numbers = filter abundant_number [12..20161]

can_be_written_as_two :: Integer -> [Integer] -> Bool
can_be_written_as_two x list = any id [y + z == x | y <- list, z <- list]

main = putStrLn $ show $ last $ map snd_ $ take 20163 $ iterate iter (1, 0, [])
	where
		snd_ (x,y,z) = y
		iter (x, y, abundants) = if can_be_written_as_two x abundants then (x + 1, x + y, new_abundants) else (x + 1, y, new_abundants)
			where new_abundants = if abundant_number x then x : abundants else abundants
