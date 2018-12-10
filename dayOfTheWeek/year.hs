module Year where

isLeap :: Int -> Bool
isLeap year
    | (mod year 4) == 0 && (mod year 100) /= 0 = True
    | (mod year 100) == 0 && (mod year 400) == 0 = True
    | otherwise = False

daysInYear :: Int -> Int
daysInYear year
    | (isLeap year) == True = 366
    | otherwise = 365
