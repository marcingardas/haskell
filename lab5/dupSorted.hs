-- Remove duplicates from a sorted list
dupSorted :: Eq a => [a] -> Bool
dupSorted [] = False
dupSorted (h:[]) = False
dupSorted (h:h1:t)
    | (h == h1) = True
    | otherwise = dupSorted ([h1] ++ t)
