-- Remove duplicates from a sorted list
nubSorted :: Eq a => [a] -> [a]
nubSorted [] = []
nubSorted (h:[]) = [h]
nubSorted (h:h1:t)
    | (h == h1) = nubSorted ([h1] ++ t)
    | otherwise = [h] ++ nubSorted ([h1] ++ t)
