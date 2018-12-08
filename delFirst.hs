-- Return array with first occurance of x removed
delFirst :: Eq a => a -> [a] -> [a]
delFirst x [] = []
delFirst x (ah:at)
    | ah == x = at
    | otherwise = [ah] ++ delFirst x at
