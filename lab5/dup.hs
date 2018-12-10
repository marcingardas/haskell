num :: Eq a => a -> [a] -> Int
num x [] = 0
num x (ah:at)
    | x == ah = 1 + num x at
    | otherwise = num x at

-- Check if there are duplicates in a list
dup :: Eq a => [a] -> Bool
dup [] = False
dup (h:t)
    | (mod (num h t) 2) == 1 = True
    | otherwise = dup t
