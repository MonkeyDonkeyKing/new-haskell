module Aufgabe where

hoch4 :: Int -> Int
hoch4 0 = 1
hoch4 x = x * hoch4 (x - 1)