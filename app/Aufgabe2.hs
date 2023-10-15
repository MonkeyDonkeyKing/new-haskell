module Aufgabe2 where

-- Aufgabe 1
-- Geben Sie den Typ der folgenden Ausdrücke an. Prüfen Sie Ihre Antwort mit GHCi.
-- \item [ 'o', 'h', 'm' ]        Typ: [Char]
-- \item ( 'o', 'h', 'm' )        Typ: (Char, Char, Char)
-- \item [ (), () ] Typ: [()]
-- \item [ ( 'o', ()), ('h', ())] Typ: [(Char, ())]
-- \item ( ['o', 'h'], [(), ()] ) Typ: ([Char], [()])
-- \item [ 1, 3.14, 6.5 ]         Typ Fractional a => [a]
-- \item ( 1, 3.14, 6.5 )         Typ: (Num a, Fractional b, Fractional c) => (a, b, c)
-- \item [ head, last, (!! 2) ]   Typ: [[a] -> a]

-- Anwendung im Compiler: ghci -> t: [ 'o', 'h', 'm' ]



-- Schreiben Sie eine Definition, die den folgenden Typ hat:
-- \item zahlen :: [Integer]                        Definition: zahlen = [1, 2, 3, 4, 5]
-- \item wahrheiten :: [[Bool]]                     Definition: wahrheiten = [[True],[False]]
-- \item add :: Int -> Int -> Int -> Int            Definition: add a b c = a + b + c
-- \item zip3' :: [a] -> [b] -> [c] -> [(a, b, c)]  Definition: zip3' [] _ _ = []
--                                                  Definition: zip3' _ [] _ = []
--                                                  Definition: zip3' _ _ [] = []
--                                                  Definition: zip3' (x:xs) (y:ys) (z:zs) = (x,y,z) : zip3 xs ys zs
-- \item apply :: (a -> b) -> a -> b                Definition: apply function x = function x 
-- Bei welchen Typen gibt es nur eine Lösung? ???



-- Geben Sie den Typ der folgenden Funktionen an:
-- \item second xs = head (tail xs)               Typ: second :: [a] -> a
-- \item swap (x, y) = (y, x)                     Typ: swap :: (a,b) -> (b,a)
-- \item pair x y = (x, y)                        Typ: pair :: a -> b -> (a , b)
-- \item palindrome xs = reverse xs == xs         Typ: palindrome :: Eq a => [a] -> Bool
-- \item twice f x = f (f x)                      Typ: twice :: (a -> a) -> a -> a

-- Geben Sie auch die Klassenconstraints an, sovern ueberladene Operatoren
-- verwendet werden.


