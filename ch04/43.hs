{-
 - Consider a function safetail :: [a] -> [a] that behaves
 - in the same way as tail except that it maps the empty list
 - to itself rather than producing an error. Using tail and the
 - function null :: [a] -> Bool that decides if a list is empty
 - or not, defint safetail using:
 -
 - a. a conditional expression;
 - b. guarded equations;
 - c. pattern matching.
 -}

safetailCE xs = if null xs then xs else tail xs

safetailGE xs | null xs = xs
              | otherwise = tail xs

safetailPM [] = []
safetailPM (_:xs) = xs
