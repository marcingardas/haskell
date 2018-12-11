-- Determine whether a given positive integer is an exact power of 2

isPower:: Int -> Bool
isPower 2 = True
isPower n
    | mod n 2 == 0 = isPower (div n 2)
    | otherwise = False
