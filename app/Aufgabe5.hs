module Aufgabe5 where

-- \chapter{Rekursion}

-- \begin{aufgabe}
-- Definieren Sie unter Verwendung der Multiplikation (*) den
-- Potenzierungsoperator als rekursive Funktion:

-- > potenz :: Integer -> Integer -> Integer
-- > potenz _ 0 = 1
-- > potenz 0 _ = 0
-- > potenz x y = x * potenz x (y-1)

-- \end{aufgabe}

-- \begin{aufgabe}
-- Implementieren Sie den Euklidischen Algorithmus zur Bestimmung des größten
-- gemeinsamen Teilers als rekursive Funktion.

-- > euklid :: Integer -> Integer -> Integer
-- > euklid a b
-- >  | b == 0    = a
-- >  | otherwise = euklid b (a `mod` b)

-- \end{aufgabe}

-- \begin{aufgabe}
-- Definieren Sie die Funktion `concat` der Standardbibliothek, die eine
-- Liste von Listen zu einer Liste umwandelt, als rekursive Funktion.

-- > konkat :: [[a]] -> [a]
-- > konkat [] = []
-- > konkat (x:xs) = x ++ konkat xs

-- Anmerkung: xs steht in diesem fall für alle anderen Listen der Liste


-- \end{aufgabe}

-- \begin{aufgabe}
-- Definieren Sie den (!!)-Operator, der das n-te Element einer Liste liefert
-- als rekursive Funktion.

-- > index :: [a] -> Int -> a
-- > index [] _ = error "Index out of range"
-- > index (x:xs) n
-- >   | n == 0    = x
-- >   | otherwise = index xs (n-1)

-- \end{aufgabe}

-- \begin{aufgabe}
-- Definieren sie eine rekursive Funktion, die von einem gegebenen Element
-- entscheidet, ob es sich in einer Liste befindet.

-- > element :: Eq a => a -> [a] -> Bool
-- > element _ [] = False
-- > element n (x:xs)
-- >   | n == x    = True
-- >   | otherwise = element n xs

-- \end{aufgabe}
