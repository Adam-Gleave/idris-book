module ChapterThree

import Data.Vect

||| Reimplementation of "length" function in Prelude.
||| Recurses from a base case of 0, returning the successor each time
||| @lst List to process
myLength : (lst : List a) -> Nat
myLength [] = 0
myLength (x :: xs) = S (myLength xs)

||| Reimplementation of "reverse" function in Prelude.
||| @lst List to process
myReverse : (lst : List a) -> List a
myReverse = reverseFrom [] where
  reverseFrom : List a -> List a -> List a
  reverseFrom lst [] = lst
  reverseFrom lst (x :: xs) = reverseFrom (x :: lst) xs

||| Reimplementation of "map" function in Prelude.
||| @fnc Function to apply to each member of the list
||| @lst List to process
myMap : (fnc : (a -> b)) -> (lst : List a) -> List b
myMap fnc [] = []
myMap fnc (x :: xs) = fnc x :: myMap fnc xs

||| Reimplementation of "map" function in Prelude.
||| Very similar to "myMap" function defined above.
||| @fnc Function to apply to each member of the vector
||| @vec Vector to process
myMapVec : (fnc : (a -> b)) -> (vec : Vect n a) -> Vect n b
myMapVec fnc [] = []
myMapVec fnc (x :: xs) = fnc x :: myMapVec fnc xs
