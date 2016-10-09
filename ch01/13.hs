{-
 - Define a function product that produces the product of a list of numbers,
 - and show using your definition that product [2,3,4] = 24
 -}

recProduct [] = 1
recProduct (x:xs) = x * product xs

main = print recProduct [2,3,4]
