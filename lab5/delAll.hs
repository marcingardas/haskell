-- Return list with first occurance of x removed
delAll :: Eq a => a -> [a] -> [a]
delAll x [] = []
delAll x (ah:at)
    | ah == x = delAll x at
    | otherwise = [ah] ++ delAll x at
