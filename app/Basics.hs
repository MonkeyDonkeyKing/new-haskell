{-# OPTIONS_GHC -Wno-missing-export-lists #-}
module Basics where

quadrat :: Num a => a -> a
quadrat x = x * x

fak :: (Num a, Enum a) => a -> a
fak x = product [1..x]

quicksort :: Ord a => [a] -> [a]
quicksort []     = []     -- An empty list is already sorted
quicksort (x:xs) = quicksort [y | y <- xs, y <= x]
                   ++ [x] ++
                   quicksort [y | y <- xs, y > x]


data Bool' = BFalse | BTrue
    deriving (Show)
    
not' :: Bool' -> Bool'
not' BFalse = BTrue
not' BTrue  = BFalse

and' :: Bool' -> Bool' -> Bool'
and' BFalse _ = BFalse
and' BTrue  y = y

myBool1 :: Bool'
myBool1 = BTrue

myBool2 :: Bool'
myBool2 = BFalse