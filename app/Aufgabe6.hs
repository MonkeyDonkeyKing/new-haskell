module Aufgabe6 where

-- \chapter{Funktionen hoeherer Ordnung}

-- \begin{aufgabe}
-- Schreiben Sie die folgende List Comprehension mit map und filter:

-- > liste :: (a -> b) -> (a -> Bool) -> [a] -> [b]
-- > liste f p xs = [ f x | x <- xs, p x ]

-- > liste' :: (a -> b) -> (a -> Bool) -> [a] -> [b]
-- > liste' = undefined

-- Beispiel:

-- > l1 = liste (*4) (even) [1..7]

-- \end{aufgabe}
-- \begin{aufgabe}
-- Definieren Sie map f und filter p mittels foldr.

-- > mymap :: (a -> b) -> [a] -> [b]
-- > mymap = undefined 

-- > myfilter :: (a -> Bool) -> [a] -> [a]
-- > myfilter = undefined

-- \end{aufgabe}

-- \begin{aufgabe}
-- Schreiben Sie mit takeWhile und dropWhile eine Funktion, die
-- eine gegebene Zahl in eine sortierte Liste an der richtigen Stelle
-- einfuegt.

-- > insert :: Ord a => a -> [a] -> [a]
-- > insert x xs = undefined

-- Schreiben Sie nun Insertion-Sort mittels foldr:

-- > isort :: Ord a => [a] -> [a]
-- > isort = undefined

-- \end{aufgabe}

-- \begin{aufgabe}
-- Schreiben Sie die Funktion curry, die aus einer Funktion von einem Paar eine
-- curried Funktion erzeugt. Schreiben Sie ebenfalls die Umkehrfunktion uncurry.
-- Beginnen Sie mit den Typen der beiden Funktionen:

-- > mycurry = undefined

-- > myuncurry = undefined

-- \end{aufgabe}

-- \begin{aufgabe}
-- Die Funktion partition teilt eine Liste nach einem Praedikat in ein Paar von
-- Listen, bei dem die erste Liste alle Elemente enthaelt, die das Praedikat
-- erfuellen, die zweite alle Elemente, die es nicht erfuellen.

-- > partition :: (a -> Bool) -> [a] -> ([a], [a])
-- > partition p xs = (filter p xs, filter (not . p) xs)

-- Schreiben Sie diese Funktion mittels eines einzigen (!) foldr.

-- > partition' :: (a -> Bool) -> [a] -> ([a], [a])
-- > partition' = undefined

-- \end{aufgabe}

-- \begin{aufgabe}
-- Die duale Funktion zu fold ist unfold. Waehrend fold eine Liste konsumiert,
-- produziert unfold eine Liste.

-- > myunfold p h t x | p x       = []
-- >                  | otherwise = h x : myunfold p h t (t x)

-- Wenn das Praedikat wahr ist, dann endet die Liste. Sonst wird mit der
-- Funktion h aus dem Zustand x der naechste Wert erzeugt und mit der Funktion
-- t der Zustand x fuer die Erzeugung des Rests der Liste berechnet.

-- Beispiel:

-- > type Bit = Int
-- > int2bin :: Int -> [Bit]
-- > int2bin = myunfold (== 0) (`mod` 2) (`div` 2)

-- Definieren Sie die Funktionen chop8, map f und iterate f mittels unfold.

-- > chop8 :: [Bit] -> [[Bit]]
-- > chop8 = undefined

-- > my_map :: (a -> b) -> [a] -> [b]
-- > my_map f = undefined

-- > my_iterate :: (a -> a) -> a -> [a]
-- > my_iterate f = undefined

-- \end{aufgabe}

-- \begin{aufgabe}
-- Erweitern Sie die Implementierung der Uebertragung aus der Vorlesung nun
-- fuer einen Kanal mit Stoerungen. Verwenden Sie zur Sicherung der Uebertragung
-- ein Paritaetsbit, das bei einer ungeraden Zahl der gesetzten Bit eins und
-- sonst null ist. Beim Empfang lesen Sie nun neun Bits, pruefen die Paritaet
-- und geben die acht Bit bei erfolgreicher Pruefung zurueck. Sonst melden
-- Sie einen Fehler mit der Bibliotheksfunktion error :: String -> a.

-- Testen Sie Ihr Programm mit einem Kanal, der das erste Bit einer Uebertragung
-- "vergisst".
-- \end{aufgabe}
