-- Return the number of times item x occured in an list
num :: Eq a => a -> [a] -> Int
num x [] = 0
num x (ah:at)
    | x == ah = 1 + num x at
    | otherwise = num x at
