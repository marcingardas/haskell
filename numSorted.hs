-- Return the number of times item x occured in a sorted array
numSorted :: [Int] -> Int -> Int
numSorted [] x = 0
numSorted (ah:at) x
    | x < ah = 0
    | x == ah = 1 + numSorted at x
    | otherwise = numSorted at x
