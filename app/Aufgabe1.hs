{-# OPTIONS_GHC -Wno-missing-export-lists #-}
module Aufgabe1 where

-- Aufgabe 1
-- Zeigen Sie mehrere mögliche Auswertungen für `hoch4 (2 + 3).

-- hoch4 :: Integer -> Integer
-- hoch4 x = x^4

-- 1. Fall Innere Auswertung
-- (2+3) zuerst dann hoch4 5
-- 5^4 = 625

-- hoch4 :: Integer -> Integer
-- hoch4 x = x*x*x*x

-- 2. Fall
-- (2+3) zuerst dann hoch4 5
-- 5*5*5*5 = 625

-- hoch4 :: Integer -> Integer
-- hoch4 x = x*x*x*x

-- 3. Fall Rekursion
-- Zuerst  5 * hoch4 4
-- 5 * (4 * hoch4 3)
-- 5 * (4 * (3 * (2 * hoch4 1)))

hoch4 :: Int -> Int
hoch4 0 = 1
hoch4 x = x * hoch4 (x - 1)

-- Definieren Sie eine Funktion `summe`, die eine
-- Liste von Zahlen addiert.

summe :: [Integer] -> Integer
summe [] = 0
summe (x : xs) = x + summe xs


-- Testfälle

test1_sum :: Bool
test1_sum = summe [1, 2, 3] == 6

test2_sum :: Bool
test2_sum = summe [5, 10, 15] == 30

test3_sum :: Bool
test3_sum = summe [] == 0

-- Vergleich mit der sum function

test4_sum :: Bool
test4_sum = summe [1, 2, 3, 4, 5] == sum [1, 2, 3, 4, 5]

-- Definieren Sie eine Funktion `laenge`, die die Laenge einer Liste berechnet.

laenge :: [Integer] -> Integer
laenge []     = 0
laenge (_:xs) = 1 + laenge xs

-- Testfälle

test1_l :: Bool
test1_l = laenge [1..5] == 5

test2_l :: Bool
test2_l = laenge [5, 10, 15] == 3

test3_l :: Bool
test3_l = laenge [] == 0

test4_l :: Bool
test4_l = laenge [1, 2, 3, 4, 5] == fromIntegral (length [1, 2, 3, 4, 5])

-- Zeigen Sie, dass `produkt [x] = x` f"ur beliebiges x gilt.

produkt :: Num a => [a] -> a
produkt []     = 1
produkt (x:xs) = x * produkt xs

-- Um zu zeigen, dass produkt [x] = x, setzen wir x als das einzige Element in die Liste ein:
-- Um zu zeigen, dass produkt [x] = x,
-- setzen wir x als das einzige Element in die Liste ein:

-- produkt [x] = x * produkt []    -- Da die Liste nur ein Element hat
--  = x * 1                       -- Da das Produkt einer leeren Liste 1 ist
--  = x
