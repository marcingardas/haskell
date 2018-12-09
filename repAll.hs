-- Return list with all x values replaced with y
repAll :: Eq a => a -> a -> [a] -> [a]
repAll _ _ [] = []
repAll x y (ah:at)
    | ah == x = [y] ++ repAll x y at
    | otherwise = [ah] ++ repAll x y at
