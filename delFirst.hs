-- Return array with first occurance of x removed
delFirst :: [Int] -> Int -> [Int]
delFirst (ah:at) x
    | ah == x = at
    | otherwise    = [ah] ++ delFirst at x
