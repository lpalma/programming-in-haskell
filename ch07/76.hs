{-
 - A higher-order function unfold that encapsulates a simple pattern
 - of recursion for producing a list can be defined as follows:
 -   unfold p h t x | p x = []
 -                  | otherwise = h x : unfold p h t (t x)
 - 
 - That is, the function unfold p h t produces the empty list if the
 - predicate p is true of the argument value, and otherwise produces
 - a non-empty list by applying the function h to this value to give
 - the head, and the function t to generate another argument that is
 - recursevely processed in the same way to produce the tail of the
 - list. For example, the function int2bin can be rewritten more
 - compactly using unfold as follows:
 -   int2bin = unfold (== 0) (`mod` 2) (`div` 2)
 -
 - Redefine the function chop8, map f and iterate f unsing unfold.
 -}

type Bit = Int

unfold p h t x | p x = []
               | otherwise = h x : unfold p h t (t x)

chop8 :: [Bit] -> [[Bit]]
chop8 = unfold (== []) (take 8) (drop 8)

uMap :: Eq a => (a -> b) -> [a] -> [b]
uMap f = unfold (== []) (f . head) tail

uIterate :: (a -> a) -> a -> [a]
uIterate f = unfold (\x -> False) (id) f
