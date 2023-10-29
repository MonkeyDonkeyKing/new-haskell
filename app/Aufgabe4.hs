module Aufgabe4 where


-- List Comprehensions

-- Aufgabe 1
-- Schreiben Sie eine Funktion, die alle pythagoreischen Zahlentripel bis zu
-- einer maximalen Gr"o"se n ausgibt. Achten Sie darauf, dass keine doppelten
-- Tripel (z. B. (3,4,5) ~ (4,3,5) ) vorkommen. Verwenden Sie eine List
-- Comprehension. Zur Erinnerung: \[ a^2 + b^2 = c^2 \].

-- > pythagoras :: Integer -> [(Integer, Integer, Integer)]
-- > pythagoras = undefined



-- Aufgabe 2

-- Schreiben Sie eine Funktion, die alle Quadrupel bis zu einer maximalen Gr"o"se ausgibt, die folgende Gleichung erf"ullen:
-- \[ a^2 + b^2 = c^2 + d^2 \].

-- Vermeiden Sie wie in der vorherigen Aufgabe Quadrupel, die im wesentlichen
-- gleich sind.

-- > quadratsummen :: Integer -> [(Integer, Integer, Integer, Integer)]
-- > quadratsummen = undefined

-- \end{aufgabe}

-- \begin{aufgabe}
-- Schreiben Sie die Funktion replicate aus Data.List als List Comprehension.

-- > replicate' :: Int -> a -> [a]
-- > replicate' = undefined


-- Aufgabe 3

-- Formulieren Sie das Skalarprodukt zweier Vektoren, die als Liste implementiert
-- sind. Verwenden Sie an geeignerter Stelle eine List Comprehension.

-- \[ x * y = \sum_{i=0}^{n-1}(x_i * y_i) \]

-- > skalar :: [Double] -> [Double] -> Double
-- > skalar = undefined


-- Aufgabe 4

-- Schreiben Sie die Funktion partition aus Data.List als List Comprehension.

-- > partition' :: (a -> Bool) -> [a] -> ([a], [a])
-- > partition' = undefined






