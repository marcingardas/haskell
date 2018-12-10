import Data.Char(toUpper)

-- String to Uppercase (Passed)

stringToUpper :: String -> String
stringToUpper [] = ""
stringToUpper (stringHead:stringTail) = concat [[toUpper stringHead], stringToUpper stringTail]
