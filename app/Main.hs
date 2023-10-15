{-# LANGUAGE ScopedTypeVariables #-}
{-# OPTIONS_GHC -Wno-type-defaults #-}

module Main (main) where

import Aufgabe (hoch4)
import Basics (myBool1, myBool2, quicksort)
import Lib ()

main :: IO ()
main = do
  let unsortedList = [3, 1, 4, 1, 5, 9, 2, 6, 5]
      sortedList = quicksort unsortedList
  print sortedList

  print myBool1
  print myBool2

  let result = hoch4 (2 + 3)
  print result
