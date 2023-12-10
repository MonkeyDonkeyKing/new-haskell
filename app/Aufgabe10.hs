module Aufgabe10 where

-- Funktoren und Applikative Funktoren

-- > {-# LANGUAGE InstanceSigs #-}

-- Ergaenzen Sie jeweils die Signaturen (Typen) bei den Instanzen.

-- \begin{aufgabe}
-- Geben Sie eine Functor Instanz der partiell angewendeten Funktion
-- (a ->) an. Schreiben Sie dazu zuerst den Typ der Funktion fmap auf.
-- Welche Funktion aus der Standard-Bibliothek hat diesen Typ?

-- > instance Funktor ((->) a) where
-- >   -- fmap ::
-- >   fmap' = undefined

-- \end{aufgabe}

-- \begin{aufgabe}
-- Geben Sie eine Applicative Instanz der partiell angewendeten Funktion
-- (a ->) an.


-- > instance Applikativ ((->) a) where
-- >   -- rein ::
-- >   rein = undefined
-- >   -- (<**>) ::
-- >   x <**> y = undefined

-- \end{aufgabe}

-- \begin{aufgabe} Ueber dem Listentyp kann eine weitere Applicative Instanz
-- definiert werden, die ebenfalls die Gesetze des Applicative Functor
-- erfuellt. Dies ist kein Widerspruch zu der Aussage, dass es fuer einen Functor
-- hoechstens eine Instanz geben kann, die die Functor Gesetze erfuellt.

-- Wir betrachten einen Applicative Functor, der in Listen die jeweils an
-- derselben Stelle stehenden Werte verknuepft und endet, wenn mindestens eine
-- der beiden Listen leer ist.

-- Wie muss pure definiert werden, dass diese Instanz "interessant" ist?

-- Haskell erlaubt nur eine Instanz pro Typ, sodass wir uns mit der Definition
-- eines neuen Typs behelfen muessen:

-- > newtype ZipList a = Z [a] deriving Show

-- Geben Sie eine Functor Instanz an:

-- > instance Functor ZipList where
-- >   -- fmap ::
-- >   fmap g (Z xs) = undefined

-- Geben Sie nun eine Applicative Instanz an:

-- > instance Applicative ZipList where
-- >   -- pure ::
-- >   pure = undefined
-- >   -- (<*>) ::
-- >   (Z gs) <*> (Z xs) = undefined

-- \end{aufgabe}


-- Wiederholung der Definitionen aus der Vorlesung

-- > class Funktor f where
-- >   fmap' :: (a -> b) -> f a -> f b

-- > class Funktor f => Applikativ f where
-- >   rein   :: a -> f a
-- >   (<**>) :: f (a -> b) -> f a -> f b
