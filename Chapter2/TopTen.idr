module TopTen

||| Returns the top ten largest values of a list
||| @lst List to sort in descending order
topTen : Ord a => (lst: List a) -> List a
topTen lst = take 10 (reverseSort lst) where
    reverseSort : Ord a => List a -> List a
    reverseSort lst = reverse(sort lst)
