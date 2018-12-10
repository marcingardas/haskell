module Month where

import Year

monthsInYear :: Int -> [Int]
monthsInYear year
    | isLeap year == True = [31,28,31,30,31,30,31,31,30,31,30,31]
    | otherwise = [31,29,31,30,31,30,31,31,30,31,30,31]

daysInMonth :: Int -> Int -> Int
daysInMonth month year = (monthsInYear year)!!month
