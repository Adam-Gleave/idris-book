module Palindrome

||| Returns True if input is a palindrome and over specified chars in length
||| @str String to test
||| @len Minimum length of string to produce True
palindrome : (str : String) -> (len : Nat) -> Bool
palindrome str len = (toLower str == reverse(toLower str)) 
                     && atLeastLength str len
  where
    atLeastLength: String -> Nat -> Bool
    atLeastLength str len = length str > len
