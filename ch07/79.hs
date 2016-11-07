{-
 - Define a function altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
 - that alternatively applies its two argument functions to the
 - successive elements in a list, in turn about order. For example:
 - > altMap (+10) (+100) [0,1,2,3,4]
 - [10,101,12,103,14]
 -}

altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap _ _ [] = []
altMap f g (x:xs) = f x : altMapG f g xs

altMapG :: (a -> b) -> (a -> b) -> [a] -> [b]
altMapG _ _ [] = []
altMapG f g (x:xs) = g x : altMap f g xs
