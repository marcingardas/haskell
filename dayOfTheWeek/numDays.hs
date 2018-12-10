import Month

import Year

data Weekday = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday deriving (Enum, Show)

data Month = Jan | Feb | Mar | Apr | May | Jun | Jul | Aug | Sep | Oct | Nov | Dec deriving (Enum, Show)

type Date = (Int, Month, Int)

-- Number of days between a date and December 31st 1752
numDays :: Date -> Int
numDays (day, month, year)
    | day > 0 = 1 + numDays (day - 1, month, year)
    | fromEnum month > 0 = (daysInMonth (fromEnum month) year) + numDays (day, toEnum ((fromEnum month) - 1), year)
    | year > 1753 = daysInYear year + numDays (day, month, year - 1)
    | otherwise = 0

-- Day of the week of a given date
dayOfWeek :: Date -> Weekday
dayOfWeek date = toEnum(mod (numDays date - 2) 7)
