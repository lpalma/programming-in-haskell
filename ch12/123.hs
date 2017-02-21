{-
 - Define an instance of the Applicative class for the
 - type (a ->). If you are familiar with combinatory logic,
 - you might recognise pure and <*> for this type as being
 - the well known K and S combinators.
 -}

instance Applicative ((->) r) where
--  pure :: a -> (r -> a)
    pure a = \_ -> a

--  <*> :: (r -> (a -> b)) -> (r -> a) -> (r -> b)
    f <*> g = \x -> f x (g x)
