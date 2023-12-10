module Aufgabe8 where

-- \chapter{Typen und Typklassen}

-- > import Data.List

-- \begin{aufgabe}
-- Definieren Sie unter Verwendung der Funktion add die Funktionen mult und pow
-- als rekursive Funktionen auf Nat.

-- > data Nat = Z | S Nat deriving Show

-- > nat2int :: Nat -> Int
-- > nat2int Z     = 0
-- > nat2int (S n) = 1 + nat2int n

-- > int2nat :: Int -> Nat
-- > int2nat 0 = Z
-- > int2nat n = S (int2nat (n-1))

-- > add :: Nat -> Nat -> Nat
-- > add Z     n = n
-- > add (S m) n = S (add m n)

-- > mult :: Nat -> Nat -> Nat
-- > mult _ Z = Z
-- > mult (S Z) n = n
-- > mult (S n) m = add m (mult n m)

-- > pow :: Nat -> Nat -> Nat  -- x^y
-- > pow _ Z = S Z
-- > pow n (S m) = mult n (pow n m)

-- \end{aufgabe}
-- \begin{aufgabe}
-- Erzeugen Sie aus einer (sortierten) Liste einen balancierten binaeren (Such)baum.

-- > data Baum a = Blatt | Knoten (Baum a) a (Baum a)
-- > 
-- > balance :: [a] -> Baum a
-- > balance [] = Blatt
-- > balance :: [a] -> Baum a
-- > balance [] = Blatt
-- > balance xs = Knoten (balance left) value (balance right)
-- >   where 
-- >       (left,value,right) = (val, head l, tail l)
-- >       (val,l) = halbieren xs

-- Hinweis: Definieren Sie zunaechst eine Funktion

-- > halbieren :: [a] -> ([a],[a])
-- > halbieren xs = splitAt (length xs `div` 2) xs

-- \end{aufgabe}

-- \begin{aufgabe}
-- Schreiben Sie eine higher-order Funktion, die den Typ

-- > data Expr = Val Int | Add Expr Expr

-- > folde :: (Int -> a) -> (a -> a -> a) -> Expr -> a
-- > folde f g (Val i) = f i 
-- > folde f g (Add e1 e2) = g first second
-- >   where 
-- >        first   = folde f g e1
-- >        second  = folde f g e2

-- dergestalt umwandelt, dass jeder Val Konstruktor durch die Funktion f und
-- jeder Add Konstruktor durch die Funktion g ersetzt wird.
-- \end{aufgabe}

-- \begin{aufgabe}
-- Definieren Sie durch folde eine Funktion

-- > eval :: Expr -> Int
-- > eval = undefined

-- die einen Ausdruck auswertet und eine Funktion

-- > groesse :: Expr -> Int
-- > groesse = undefined

-- die die Anzahl der Werte (Val) berechnet.
-- \end{aufgabe}

-- \begin{aufgabe}
-- Geben Sie eine Instanzdeklaration fuer die folgenden Typen an:

-- > data Option a = None | Some a
-- > instance Eq a => Eq (Option a)
-- >   where
-- >       None    == None     = True
-- >       Some b  == Some c   = b == c
-- >       _       == _        = False

-- > data Liste a = Nil | Cons a (Liste a)
-- > instance Eq a => Eq (Liste a)
-- >   where 
-- >        Nil         == Nil          = True
-- >        Cons x xs   == Cons y ys    = x == y && xs == ys
-- >        _           == _            = False
-- \end{aufgabe}

-- \begin{aufgabe}
-- Erweitern Sie die abstrakte Maschine um eine Multiplikationsoperation.

-- > data MExpr = MVal Int | MAdd MExpr MExpr | MMult MExpr MExpr 

-- > value :: MExpr -> Int
-- > value (MVal x)     = x
-- > value (MAdd e1 e2) = value e1 + value e2
-- > value (MMult e1 e2) = value e1 * value e2
-- Welche Operationen muessen Sie auf dem Control Stack definieren?

-- > type Cont = [Op]
-- > data Op = EVAL MExpr | ADD Int | MULT Int

-- > meval :: MExpr -> Cont -> Int
-- > meval (MVal x)     c = exec c x
-- > meval (MAdd e1 e2) c = meval e1 (EVAL e2 : c)
-- > meval (MMult e1 e2) c = meval e1 (EVAL e2 : c)

-- > exec :: Cont -> Int -> Int
-- > exec []           x = x
-- > exec (EVAL e : c) x = meval e (ADD x : c)
-- > exec (ADD x : c)  y = exec c (x + y)
-- > exec (MULT x : c)  y = exec c (x * y)

-- > value' :: MExpr -> Int
-- > value' e = meval e []

-- \end{aufgabe}
