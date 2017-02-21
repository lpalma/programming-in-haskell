{-
 - There may be more than one way to make a parametised type
 - into an applicative functor. For example, the library Control.Applicative
 - provides an alternative 'zippy' instance for lists, in which
 - the function pure makes an infinite list of copies of its arguments,
 - and the operator <*> applies each argument function to the
 - corresponding argument value at the same position. Complete the
 - following declarations that implemented this idea:
 -
 - newtype ZipList a = Z [a] deriving Show
 -
 - instance Functor ZipList where
 -   -- fmap :: (a -> b) -> ZipList a -> ZipList b
 -   fmap g (Z xs) = ...
 -
 - instance Applicative ZipList where
 -   -- pure :: a -> ZipList a
 -   pure x = ...
 -
 -   -- <*> :: ZipList (a -> b) -> ZipList a -> ZipList b
 -   (Z gs) <*> (Z xs) = ...
 -
 - The ZipList wrapper around the list type is required because each
 - type can only have at most one instance declaration for a given class.
 -}

newtype ZipList a = Z [a] deriving Show

instance Functor ZipList where
    -- fmap :: (a -> b) -> ZipList a -> ZipList b
    fmap g (Z xs) = Z (fmap g xs)

instance Applicative ZipList where
    -- pure :: a -> ZipList a
    pure x = Z (repeat x)

    -- <*> :: ZipList (a -> b) -> ZipList a -> ZipList b
    (Z gs) <*> (Z xs) = Z (zipWith (\f x -> f x) gs xs)
