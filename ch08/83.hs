{-
 - Consider the following type of binary tree:
 -   data Tree a = Leaf a | Node (Tree a) (Tree a)
 - Let us say that such a tree is balanced if the number
 - of leaves in the left and right subtree of every node
 - differs by at most one, with leaves themselves being
 - trivially balanced. Define a function
 - balanced :: Tree a -> Bool that decides if a binary
 - tree is balanced or not.
 - Hint: first define a function that returns the number
 - of leaves in a tree.
 -}

data Tree a = Leaf a | Node (Tree a) (Tree a) deriving Show

countLeaves :: Tree a -> Int
countLeaves (Leaf _) = 1
countLeaves (Node l r) = countLeaves l + countLeaves r

balanced :: Tree a -> Bool
balanced (Leaf a) = True
balanced (Node l r) = abs (countLeaves l - countLeaves r) <= 1
                      && balanced l && balanced r
