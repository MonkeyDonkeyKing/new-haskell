module Aufgabe4 where


-- List Comprehensions

-- Aufgabe 1
-- Schreiben Sie eine Funktion, die alle pythagoreischen Zahlentripel bis zu
-- einer maximalen Größe n ausgibt. Achten Sie darauf, dass keine doppelten
-- Tripel (z. B. (3,4,5) ~ (4,3,5) ) vorkommen. Verwenden Sie eine List
-- Comprehension. Zur Erinnerung: \[ a^2 + b^2 = c^2 \].

-- pythagoras :: Integer -> [(Integer, Integer, Integer)]
-- pythagoras n = [(a, b, c) | a <- [1..n], b <- [a..n], c <- [b..n], a^2 + b^2 == c^2]


-- Aufgabe 2
-- Schreiben Sie eine Funktion, die alle Quadrupel bis zu einer maximalen Größe ausgibt, die folgende Gleichung erfüllen:
-- \[ a^2 + b^2 = c^2 + d^2 \].
-- Vermeiden Sie wie in der vorherigen Aufgabe Quadrupel, die im wesentlichen
-- gleich sind.

-- quadratsummen :: Integer -> [(Integer, Integer, Integer, Integer)]
-- quadratsummen n = [(a, b, c, d) | a <- [1..n], b <- [a..n], c <- [b..n], d <- [c..n], a^2 + b^2 == c^2 + d^2]


-- Aufgabe 3
-- Schreiben Sie die Funktion replicate aus Data.List als List Comprehension.

-- replicate' :: Int -> a -> [a]
-- replicate' n x = [x | _ <- [1..n]]


-- Aufgabe 4
-- Formulieren Sie das Skalarprodukt zweier Vektoren, die als Liste implementiert
-- sind. Verwenden Sie an geeignerter Stelle eine List Comprehension.

-- \[ x * y = \sum_{i=0}^{n-1}(x_i * y_i) \]

-- > skalar :: [Double] -> [Double] -> Double
-- > skalar x y = sum [ x_i * y_i | (x_i, y_i) <- zip x y]


-- Aufgabe 5
-- Schreiben Sie die Funktion partition aus Data.List als List Comprehension.

-- partition' :: (a -> Bool) -> [a] -> ([a], [a])
-- partition' p xs = ([x | x <- xs, p x], [x | x <- xs, not (p x)])






