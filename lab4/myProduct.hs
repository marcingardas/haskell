-- Product of the Elements of a List (Passed)

myProduct :: [Int] -> Int
myProduct [] = 1
myProduct (listHead:listTail) = listHead * myProduct listTail
