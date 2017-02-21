{-
 - Complete the following instance declaration to make
 - the partially-applied function type (a ->) into a functor:
 -
 - instance Functor ((->) a) where
 -   ...
 -
 - Hint: first write down the type of fmap, and then think
 - if you already know a library function that has this type.
 -}

instance Functor ((->) c) where
--  fmap :: (a -> b) -> (c -> a) -> (c -> b)
    fmap g h = (.)
