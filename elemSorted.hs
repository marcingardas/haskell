-- Return the true if item x occured in a sorted list
elemSorted :: Ord a => a -> [a] -> Bool
elemSorted x [] = False
elemSorted x (ah:at)
    | x < ah = False
    | x == ah = True
    | otherwise = elemSorted x at
