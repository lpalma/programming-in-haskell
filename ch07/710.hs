{-
 - Using altMap, define a function luhn :: [Int] -> Bool
 - that implements the Luhn algorithm from the exercises
 - in chapter 4 for bank card numbers of any length. Test
 - your new function using your own bank card.
 -}

altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap _ _ [] = []
altMap f g (x:xs) = f x : altMapG f g xs

altMapG :: (a -> b) -> (a -> b) -> [a] -> [b]
altMapG _ _ [] = []
altMapG f g (x:xs) = g x : altMap f g xs

luhn :: [Int] -> Bool
luhn xs = sum (altMap id luhnDouble $ reverse xs) `mod` 10 == 0

luhnDouble x | doubleX > 9 = doubleX - 9
             | otherwise = doubleX
             where doubleX = x * 2
