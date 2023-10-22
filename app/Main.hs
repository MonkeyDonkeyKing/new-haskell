module Main (main) where

import Lib ()
import Aufgabe3 (safeTail'')

main :: IO ()
main = do
    putStrLn "Aufgabe 3"
    let result = safeTail'' [1, 7, 5]
    print result