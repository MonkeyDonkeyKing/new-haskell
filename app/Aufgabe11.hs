{-# OPTIONS_GHC -Wno-missing-export-lists #-}
{-# LANGUAGE InstanceSigs #-}
{-# LANGUAGE InstanceSigs #-}
module Aufgabe11 where
import Text.Read (readMaybe)
import Data.Char (ord)
-- \chapter{IO}

-- > import Control.Monad

-- \begin{aufgabe}

-- Schreiben Sie

-- > schreibe :: String -> IO ()
-- > schreibe str = sequence_ [ putStrLn line | line <- lines str ]

-- Beispielaufruf:
-- schreibe "Hallo\nWelt\n"

-- mit einer List Comprehension und der Funktion sequence_
-- aus Control.Monad.
-- \end{aufgabe}

-- \begin{aufgabe}

-- Schreiben Sie einen Addierer, der zuerst fragt, wieviele Zahlen addiert werden
-- sollen, diese dann einliest und schliesslich die Summe ausgibt.

-- addierer :: IO()
-- addierer = do
--   putStrLn "Wie viele Zahlen möchten Sie addieren?"
--   countInput <- getLine
--   let maybeCount = readMaybe countInput
--   case maybeCount of
--     Just count -> hilfsaddierer 0 count
--     Nothing    -> putStrLn "Ungültige Eingabe. Bitte geben Sie eine Zahl ein." >> addierer

-- Definieren Sie zunaechst eine Hilfsfunktion, die aktuelle Summe und die noch zu lesenden Zahlen als Argumente hat:
-- hilfsaddierer :: Int -> Int -> IO ()
-- hilfsaddierer sum count 
--   | count <= 0 = putStrLn $ "Die Summe lautet: " ++ show sum
--   | otherwise = do
--       putStrLn $ "Geben Sie die nächste Zahl ein (" ++ show count ++ " übrig):"
--       input <- getLine
--       let maybeNumber = readMaybe input
--       case maybeNumber of
--           Just number -> hilfsaddierer (sum + number) (count - 1)
--           Nothing     -> putStrLn "Ungültige Eingabe. Bitte geben Sie eine Zahl ein." >> hilfsaddierer sum count


-- Welchen Typ hat diese Funktion? -> ()
-- Verwenden Sie fuer diese Aufgabe an geeigneten Stellen die Read und Show
-- Instanzen von Int
-- \end{aufgabe}

-- \begin{aufgabe}
-- Definieren Sie die addierer Funktion nun mit sequence aus Control.Monad.
-- Hauptfunktion mit sequence

-- GEHT NICHT -> sequence_ wirft das ergebnis weg - sum wird falsch geupdated
-- addierer :: IO ()
-- addierer = do
--   putStrLn "Wie viele Zahlen möchten Sie addieren?"
--   countInput <- getLine
--   let maybeCount = readMaybe countInput :: Maybe Int
--   case maybeCount of
--     Just count -> sequence_ (replicate count (hilfsaddierer 0 1))
--     Nothing    -> putStrLn "Ungültige Eingabe. Bitte geben Sie eine Zahl ein." >> addierer



-- \end{aufgabe}
-- \begin{aufgabe}
-- Definieren Sie eine Funktion

-- liesZeile :: IO String
-- liesZeile = liesZeile' ""

-- liesZeile' :: String -> IO String
-- liesZeile' acc = do
--   char <- getChar
--   case char of
--     '\n' -> putStrLn "" >> return acc
--     '\DEL' -> if null acc
--                  then liesZeile' acc
--                  else do
--                    putStr "\b \b"
--                    liesZeile' (init acc)
--     _    -> putChar char >> liesZeile' (acc ++ [char])

-- die auch das Loeschen von Zeichen unterstuetzt. Das Loeschzeichen wird durch
-- '\DEL' dargestellt und der Cursor wird mit '\b' zurueck bewegt.
-- \end{aufgabe}

-- \begin{aufgabe}
-- Schreiben Sie ein Programm Zeichencodes, das solange ein Zeichen einliest und
-- den Code (siehe ord :: Char -> Int) ausgibt, bis Sie die Eingabetaste ('\n')
-- druecken.

-- codes :: IO ()
-- codes = do
--     putStrLn "Geben Sie Zeichen ein. Drücken Sie Enter, um zu beenden."
--     codesLoop

-- codesLoop :: IO ()
-- codesLoop = do
--     char <- getChar
--     if char == '\n'
--         then putStrLn "Programm beendet."
--         else do
--             putStrLn $ "Der Code für '" ++ [char] ++ "' ist: " ++ show (ord char)
--             codesLoop

-- \end{aufgabe}

-- \begin{aufgabe}
-- Definieren Sie ausgehend von der Monad Instanz des State Transformer ST die
-- Instanzen der Typklassen Functor und Applicative unter Verwendung der
-- do-Notation. Geben Sie auch die Typen der Methoden an.

-- type Zustand = Int
-- newtype ZT a = Z (Zustand -> (a, Zustand))

-- app :: ZT a -> Zustand -> (a, Zustand)
-- app (Z zt) x = zt x


-- instance Monad ZT where
--    (>>=) :: ZT a -> (a -> ZT b) -> ZT b
--    st >>= f = Z $ \s ->
--                   let (x,s') = app st s in app (f x) s'

-- instance Functor ZT where
--   fmap :: (a -> b) -> ZT a -> ZT b
--   fmap f st = do
--     x <- st
--     return (f x)

-- instance Applicative ZT where
-- pure :: a -> ZT a
-- pure x = Z $ \s -> (x, s)

-- (<*>) :: ZT (a -> b) -> ZT a -> ZT b
-- mf <*> mx = do 
--   f <- mf
--   x <- mx
--   return (f x)


-- \end{aufgabe}


