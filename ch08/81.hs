{-
 - In a similar manner to the function add, define a recursive
 - multiplication function mult :: Nat -> Nat -> Nat for the
 - recursive type of natural numbers.
 - Hint: make use of add in your definition.
 -}

data Nat = Zero | Succ Nat deriving Show

add :: Nat -> Nat -> Nat
add Zero n = n
add (Succ m) n = Succ (add m n)

mult :: Nat -> Nat -> Nat
mult Zero n = Zero
mult (Succ m) n = add n $ mult m n 
