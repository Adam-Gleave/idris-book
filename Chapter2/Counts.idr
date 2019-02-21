module Counts

||| Returns a tuple containing the number of words and characters in a string
||| @str String to test
counts : (str : String) -> (Nat, Nat)
counts str = (length(words str), length str)
