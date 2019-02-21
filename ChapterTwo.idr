module ChapterTwo

||| Returns True if input is a palindrome and over specified chars in length
||| @str String to test
||| @len Minimum length of string to produce True
palindrome : (str : String) -> (len : Nat) -> Bool
palindrome str len = atLeastLength str len && 
                     (toLower str == reverse (toLower str)) where
  atLeastLength: String -> Nat -> Bool
  atLeastLength str len = length str > len

||| Returns a tuple containing the number of words and characters in a string
||| @str String to test
counts : (str : String) -> (Nat, Nat)
counts str = (length (words str), length str)

||| Returns the top ten largest values of a list
||| @lst List to sort in descending order
topTen : Ord a => (lst: List a) -> List a
topTen lst = take 10 (reverseSort lst) where
  reverseSort : Ord a => List a -> List a
  reverseSort lst = reverse(sort lst)

||| Returns the number of Strings that are over a given length
||| @len Length that string must be greater than
||| @strings List of strings to test
overLength : (len: Nat) -> (strings: List String) -> Nat
overLength len strings = length (filterOverLength len strings) where 
  filterOverLength : Nat -> List String -> List String
  filterOverLength len strings = filter (\string => length string > len) strings 
