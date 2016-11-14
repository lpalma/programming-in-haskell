{-
 - Given the type declaration
 -   data Expr = Val Int | Add Expr Expr
 - define a higher-order function
 -   folde :: (Int -> a) -> (a -> a -> a) -> Expr -> a
 - such that folde f g replace each Val constructor in
 - an expression by the function f, and each Add constructor
 - by the function g.
 -}

data Expr = Val Int | Add Expr Expr deriving Show

folde :: (Int -> a) -> (a -> a -> a) -> Expr -> a
folde f g expr = case expr of
                   Val x -> f x
                   Add x y -> g (folde f g x) (folde f g y)
