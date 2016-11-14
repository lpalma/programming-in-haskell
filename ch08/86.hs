{-
 - Using folde, define a function eval :: Expr -> Int that
 - evaluates an expression to an integer value, and a
 - function size :: Expr -> Int that calculates the number
 - of values in an expression.
 -}

data Expr = Val Int | Add Expr Expr deriving Show

folde :: (Int -> a) -> (a -> a -> a) -> Expr -> a
folde f g expr = case expr of
                   Val x -> f x
                   Add x y -> g (folde f g x) (folde f g y)

eval :: Expr -> Int
eval = folde id (+)

size :: Expr -> Int
size expr = case expr of
              Val x -> 1
              Add x y -> size x + size y
