{-
 - Complete the following instance declarations:
 - instance Eq a => Eq (Maybe a) where
 - ...
 -
 - intance Eq a => Eq [a] where
 - ...
 -}

data CMaybe a = CNothing | CJust a

instance Eq a => Eq (CMaybe a) where
  CJust a == CJust b = a == b
  CJust a == _ = False
  CNothing == CNothing = True
  CNothing == _ = False

data List a = Nil | Cons a (List a) 

instance Eq a => Eq (List a) where
  Nil == Nil = True
  Nil == _ = False
  Cons x xs == Cons y ys = x == y && xs == ys
  Cons x xs == _ = False
