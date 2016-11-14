{-
 - Although not included in appendix B, the standard prelude defines
 -   data Ordering = LT | EQ | GT
 - together with a function
 -   compare :: Ord a => a -> a -> Ordering
 - that decides if one value in an ordered type is less that (LT),
 - equal to (EQ), or greater than (GT) another value. Using this function,
 - redefine the function occurs :: Ord a => a -> Tree a -> Bool for
 - search trees. Why is this new definition more efficient than the
 - original version?
 -}

data Tree a = Leaf a | Node (Tree a) a (Tree a) deriving Show

occurs :: Ord a => a -> Tree a -> Bool
occurs x (Leaf y) = x == y
occurs x (Node l y r) = case compare x y of
                        EQ -> True
                        LT -> occurs x l
                        GT -> occurs x r
