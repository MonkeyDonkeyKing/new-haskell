{-# LANGUAGE ScopedTypeVariables #-}
{-# OPTIONS_GHC -Wno-type-defaults #-}

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

main :: IO ()
main = do
  -- let unsortedList = [3, 1, 4, 1, 5, 9, 2, 6, 5]
  --     sortedList = quicksort unsortedList
  -- print sortedList

  -- print myBool1
  -- print myBool2

  -- let result = hoch4 (2 + 3)
  -- putStrLn "Hoch4 (2+3) rekursiv"
  -- print result

  -- putStrLn "Test 1: summe [1,2,3] == 6"
  -- print test1_sum

  -- putStrLn "Test 2: summe [5, 10, 15] == 30"
  -- print test2_sum

  -- putStrLn "Test 3: summe [] == 0"
  -- print test3_sum

  -- putStrLn "Test 4: summe [1, 2, 3, 4, 5] == sum [1, 2, 3, 4, 5]"
  -- print test4_sum

  -- putStrLn "Test 1: laenge [1..5] == 5"
  -- print test1_l

  -- putStrLn "Test 2: laenge [5, 10, 15] == 3"
  -- print test2_l

  -- putStrLn "Test 3: laenge [] == 0"
  -- print test3_l

  -- putStrLn "Test 4: laenge [1, 2, 3, 4, 5] == fromIntegral (length [1, 2, 3, 4, 5])"
  -- print test4_l

  putStrLn "Aufgabe 2"