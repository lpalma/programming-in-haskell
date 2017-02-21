{-
 - Define an insance of the Monad class for the type (a ->).
 -}

instance Monad ((->) t) where
    return x = \_ -> x

    -- >>= :: (t -> a) -> (a -> (t -> b)) -> (t -> b)
    f >>= g = \x -> g (f x) x
