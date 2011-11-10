module Main where

data Noughts = One | Two | Three | Four | Five | Six | Seven | Eight | Nine deriving (Show,Ord,Enum,Eq)
data Teens = Ten | Eleven | Twelve | Thirteen | Fourteen | Fifteen | Sixteen | Seventeen | Eighteen | Nineteen deriving (Show,Ord,Enum,Eq)
data Tys = Twenty | Thirty | Forty | Fifty | Sixty | Seventy | Eighty | Ninety deriving (Show,Ord,Enum,Eq)
data Hundred = Hundred deriving (Show,Eq)

noughts  = map show [One ..Nine]
teens    = map show [Ten ..Nineteen]
tys      = (++) noughts $ (++) teens $ foldl (++) [] $ map (\ty -> show ty : map (\nought -> show ty ++ nought) noughts ) [Twenty ..Ninety]
hundreds = foldl (++) [] $ map (\hundred -> hundred : map (\ty -> hundred ++ "and" ++ ty) tys ) $ zipWith (++) noughts (take 10 $ repeat $ show Hundred)
thousand = [show One ++ "thousand"]
numbers = tys ++ hundreds ++ thousand

main = putStrLn $ show $ sum $ map length numbers
