-- Return the number of times item x occured in a sorted list
numSorted :: Ord a => a -> [a] -> Int
numSorted x [] = 0
numSorted x (ah:at)
    | x < ah = 0
    | x == ah = 1 + numSorted x at
    | otherwise = numSorted x at
