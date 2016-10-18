{-
 - Without using any other library function or operator, show how
 - the meaning of the following pattern matching definition for
 - logical conjunction && can be formalised using conditional expressions:
 -   True && True = True
 -   _    && _    = False
 -
 - Hint: use two nested conditional expressions.
 -}

andF a b =
  if a then
    if b then
      True
    else
      False
  else
    False
