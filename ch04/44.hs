{-
 - In a similar way to && in section 4.4, show how the disjunction
 - operator || can be defined in four different ways using pattern matching.
 -}

or1 True True = True
or1 True False = True
or1 False True = True
or1 False False = False

or2 False False = False
or2 _ _ = True

or3 b False = b 
or3 _ _ = True

or4 True _ = True
or4 False b = b
