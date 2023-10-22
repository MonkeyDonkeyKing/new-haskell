module Main (main) where

import Basics ()
import Aufgabe1
    ( hoch4,
      test1_sum,
      test2_sum,
      test3_sum,
      test4_sum,
      test1_l,
      test2_l,
      test3_l,
      test4_l )
import Lib ()
import Aufgabe3 (halbieren)

main :: IO ()
main = do
    putStrLn "Aufgabe 3"
    let list = [1,2,3,4,5]
    let result = halbieren list
    print result