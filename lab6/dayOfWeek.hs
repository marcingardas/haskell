data Weekday = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday deriving (Enum, Show, Read)

data Month = Jan | Feb | Mar | Apr | May | Jun | Jul | Aug | Sep | Oct | Nov | Dec deriving (Enum, Show, Read)

type Date = (Int, Month, Int)

-- Is the year a leap year
leap :: Int -> Bool
leap year
    | (mod year 4) == 0 && (mod year 100) /= 0 = True
    | (mod year 100) == 0 && (mod year 400) == 0 = True
    | otherwise = False

-- Number of days in a year
daysInYear :: Int -> Int
daysInYear year
    | (leap year) == True = 366
    | otherwise = 365

-- List of months in a year and their lengths
mLengths :: Int -> [Int]
mLengths year
    | leap year == True = [31,29,31,30,31,30,31,31,30,31,30,31]
    | otherwise = [31,28,31,30,31,30,31,31,30,31,30,31]

-- Number of days in a month of a given year
daysInMonth :: Int -> Int -> Int
daysInMonth month year = (mLengths year)!!month

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
