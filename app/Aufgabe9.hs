module Aufgabe9 where

--   Erweitern Sie den Tautologie Checker um die logischen
-- Operationen Disjunktion (oder, \/) und Aequivalenz (<->).

-- Verwenden Sie zum Testen z.B.

-- * (A -> B) <-> (~B -> ~A)

-- > p3 :: Prop
-- > p3 = Equ (Imp (Var 'A') (Var 'B')) (Imp (Not (Var 'B')) (Not (Var 'A')))

-- * (A -> B) <-> (~A \/ B)

-- > p4 :: Prop
-- > p4 = Equ (Imp (Var 'A') (Var 'B')) (Dis (Not (Var 'A')) (Var 'B'))

-- Abstrakte Syntax der Aussagenlogik

-- > data Prop = Const Bool
-- >           | Var Char
-- >           | Not Prop
-- >           | And Prop Prop
-- >           | Imp Prop Prop
-- >           | Dis Prop Prop
-- >           | Equ Prop Prop
-- >   deriving Show

-- Beispiel:

-- A /\ ~ A

-- > p1 :: Prop
-- > p1 = And (Var 'A') (Not (Var 'A'))

-- (A /\ B) -> A

-- > p2 :: Prop
-- > p2 = Imp (And (Var 'A') (Var 'B')) (Var 'A')

-- Aus der letzten Vorlesung:

-- > type Tabelle key value = [(key, value)]

-- > find :: Eq k => k -> Tabelle k v -> v
-- > find s t = head [ v | (s', v) <- t, s == s']

-- > type Subst = Tabelle Char Bool

-- Beispiel:

-- > s1 :: Subst
-- > s1 = [ ('A', False), ('B', True) ]

-- Damit koennen wir eine Semantik definieren:

-- > peval :: Subst -> Prop -> Bool
-- > peval _ (Const b)   = b
-- > peval s (Var x)     = find x s
-- > peval s (Not p)     = not (peval s p)
-- > peval s (And p1 p2) = peval s p1 && peval s p2
-- > peval s (Imp p1 p2) = peval s p1 <= peval s p2
-- > peval s (Dis p1 p2) = peval s p1 || peval s p2
-- > peval s (Equ p1 p2) = peval s p1 == peval s p2

-- Fuer die Wahrheitstafelmethode brauchen wir eine
-- Liste der Variablen in einer Prop.

-- > vars :: Prop -> [Char]
-- > vars (Const _)   = []
-- > vars (Var x)     = [x]
-- > vars (Not p)     = vars p
-- > vars (And p1 p2) = vars p1 ++ vars p2
-- > vars (Imp p1 p2) = vars p1 ++ vars p2
-- > vars (Dis p1 p2) = vars p1 ++ vars p2
-- > vars (Equ p1 p2) = vars p1 ++ vars p2

-- Alle moeglichen Subst fuer n viele Variablen:

-- > bools :: Int -> [[Bool]] 
-- > bools 0 = [[]]
-- > bools n = map (False :) bss ++ map (True :) bss
-- >   where bss = bools (n-1)

-- > substs :: Prop -> [Subst]
-- > substs p = map (zip vs) (bools (length vs))
-- >   where
-- >     vs = rmdups (vars p)

-- > rmdups :: Eq a => [a] -> [a]
-- > rmdups [] = []
-- > rmdups (x:xs) = x : filter (/= x) (rmdups xs)


-- > isTaut :: Prop -> Bool
-- > isTaut p = and [ peval s p | s <- substs p]
