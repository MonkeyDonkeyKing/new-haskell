module Aufgabe3 where

-- Aufgabe 1
-- Weshalb kann im allgemeinen der Funktionstyp keine Eq Instanz besitzen? Wir
-- betrachten zwei Funktionen als gleich, wenn sie vom gleichen Typ sind (!) und
-- für stets gleiche Eingaben auch gleiche Ergebnisse liefern. Diese
-- Eigenschaft heißt extensionale Gleichheit der Funktion.

-- Aufgabe 2
-- Verwenden Sie Funktionen aus Data.List, um die Funktion

-- > halbieren :: [a] -> ([a], [a])
-- > halbieren = undefined

-- zu schreiben, die eine Liste gerader Länge in der Mitte teilt. Finden sie
-- für ungerade Länge eine sinnvolle Spezifikation.

-- Schreiben Sie nun eine Funktion, die zwei sortierte Listen zu einer sortierten
-- Liste verschmilzt.

-- > merge :: Ord a => ([a],[a]) -> [a]
-- > merge = undefined

-- Schreiben Sie nun unter Verwendung der beiden Funktionen halbieren und merge
-- eine Funktion mergesort.

-- > mergesort :: Ord a => [a] -> [a]
-- > mergesort = undefined


-- Aufgabe 3
-- Definieren Sie die Funktion third :: [a] -> a, die das dritte Element einer
-- Liste liefert, wenn es existiert, mittels:
-- head und tail,
-- dem Listenindexoperator !!,
-- Patternmatch.

-- Aufgabe 4

-- Schreiben Sie eine sichere tail Funktion, die sich bei einer nichtleeren Liste
-- verhält wie tail und bei einer leeren Liste, eine leere Liste zurück gibt.
-- Verwenden Sie, wenn erforderlich die Funktionen tail und null :: [a] -> Bool,
-- um safetail zu definieren:
-- mit einem bedingten Ausdruck,
-- mit guarded equations
-- mit pattern matching

-- Aufgabe 5
-- Geben Sie wie in der Vorlesung vier verschiedene Wege an, um die Disjunktion
-- (oder) auf Bool zu implementieren.

-- Aufgabe 6
-- Betrachten Sie den folgenden Datentyp f"ur eine dreiwertige Logik:

-- > data Drei = Nein | Jein | Ja
-- >   deriving (Show, Eq)

-- Geben Sie zunaechst mit der "Wahrheitstabellen"-Methode eine Definition
-- für die Funktionen not, and und or. Überlegen Sie sich, was der Wert
-- Jein bedeutet und definieren Sie die Funktionen dann entsprechend.

-- > tnot :: Drei -> Drei
-- > tnot = undefined

-- > tand :: Drei -> Drei -> Drei
-- > tand = undefined

-- > tor :: Drei -> Drei -> Drei
-- > tor = undefined

-- Betrachten Sie die Wahrheitstabelle und finden Sie eine kompaktere Definition
-- mit Patterns für and:

-- > tand' :: Drei -> Drei -> Drei
-- > tand' = undefined

-- Finden Sie eine kompaktere Definition für or, indem Sie Guards verwenden.

-- > tor' :: Drei -> Drei -> Drei
-- > tor' = undefined




