-- Return list with all x values replaced with y
repFirst :: Eq a => a -> a -> [a] -> [a]
repFirst _ _ [] = []
repFirst x y (ah:at)
    | ah == x = [y] ++ at
    | otherwise = [ah] ++ repFirst x y at
