{-
 - Define an instance of the Functor class for the following
 - type of binary trees that have data in their nodes:
 - 
 - data Tree a = Leaf | Node (Tree a) a (Tree a)
 -               deriving Show
 -}

data Tree a = Leaf | Node (Tree a) a (Tree a)
              deriving Show

instance Functor Tree where
    fmap _ Leaf = Leaf
    fmap g (Node l x r) = Node (fmap g l) (g x) (fmap g r)
