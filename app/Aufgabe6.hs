module Aufgabe6 where

-- \chapter{Funktionen hoeherer Ordnung}

-- \begin{aufgabe}
-- Schreiben Sie die folgende List Comprehension mit map und filter:

-- > liste :: (a -> b) -> (a -> Bool) -> [a] -> [b]
-- > liste f p xs = [ f x | x <- xs, p x ]

-- > liste' :: (a -> b) -> (a -> Bool) -> [a] -> [b]
-- > liste' f p = map f . filter p

-- Beispiel:
-- > l1 :: [Int]
-- > l1 = liste (*4) (even) [1..7]
-- \end{aufgabe}

-- \begin{aufgabe}
-- Definieren Sie map f und filter p mittels foldr.

-- > mymap :: (a -> b) -> [a] -> [b]
-- > mymap f = foldr (\x acc -> f x : acc) []

-- > myfilter :: (a -> Bool) -> [a] -> [a]
-- > myfilter p = foldr (\x acc -> if p x then x : acc else acc) []

-- \end{aufgabe}

-- \begin{aufgabe}
-- Schreiben Sie mit takeWhile und dropWhile eine Funktion, die
-- eine gegebene Zahl in eine sortierte Liste an der richtigen Stelle
-- einfuegt.

-- > insert :: Ord a => a -> [a] -> [a]
-- > insert x xs = takeWhile (< x) xs ++ [x] ++ dropWhile (< x) xs

-- Schreiben Sie nun Insertion-Sort mittels foldr:

-- > isort :: Ord a => [a] -> [a]
-- > isort = foldr insert []

-- Beispielaufruf
-- result :: [Int]
-- result = isort [4, 2, 7, 1, 5] Ergebnis = [1, 2, 4, 5, 7] 

-- \end{aufgabe}

-- \begin{aufgabe}
-- Schreiben Sie die Funktion curry, die aus einer Funktion von einem Paar eine
-- curried Funktion erzeugt. Schreiben Sie ebenfalls die Umkehrfunktion uncurry.
-- Beginnen Sie mit den Typen der beiden Funktionen:

-- > mycurry :: ((a,b) -> c) -> a -> b -> c
-- > mycurry f x y = f (x, y) 

-- > myuncurry :: (a -> b -> c) -> (a,b) -> c
-- > myuncurry f (x, y) = f x y

-- \end{aufgabe}

-- \begin{aufgabe}
-- Die Funktion partition teilt eine Liste nach einem Praedikat in ein Paar von
-- Listen, bei dem die erste Liste alle Elemente enthaelt, die das Praedikat
-- erfuellen, die zweite alle Elemente, die es nicht erfuellen.

-- > partition :: (a -> Bool) -> [a] -> ([a], [a])
-- > partition p xs = (filter p xs, filter (not . p) xs)

-- Schreiben Sie diese Funktion mittels eines einzigen (!) foldr.

-- > partition' :: (a -> Bool) -> [a] -> ([a], [a])
-- > partition' p = foldr (\x (accTrue, accFalse) -> if p x then (x : accTrue, accFalse) else (accTrue, x: accFalse)) ([],[]) 

-- \end{aufgabe}

-- \begin{aufgabe}
-- Die duale Funktion zu fold ist unfold. Waehrend fold eine Liste konsumiert,
-- produziert unfold eine Liste.

-- > myunfold :: (a -> Bool) -> (a -> b) -> (a -> a) -> a -> [b]
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
-- > chop8 = myunfold null (take 8) (drop 8)

-- > my_map :: (a -> b) -> [a] -> [b]
-- > my_map f = myunfold null (f . head) tail

-- Zur Erinnerung
-- > id :: a -> a 
-- > id x = x

-- > my_iterate :: (a -> a) -> a -> [a]
-- > my_iterate f = myunfold (\_ -> False) id f

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

-- Chat GPT:
-- Übertragung mit Paritätsbit und Störungen
-- transmitWithParity :: [Bit] -> [Bit]
-- transmitWithParity bits = if parityCheck bits
--                              then take 8 bits
--                              else error "Übertragungsfehler"

-- -- Überprüfung der Parität (ungerade Anzahl von gesetzten Bits gibt True zurück)
-- parityCheck :: [Bit] -> Bool
-- parityCheck bits = odd (sum bits)

-- Test mit einem Kanal, der das erste Bit vergisst
-- testTransmission :: [Bit]
-- testTransmission = transmitWithParity [0, 1, 0, 1, 1, 0, 1, 0, 1]

-- \end{aufgabe}
