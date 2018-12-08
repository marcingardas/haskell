import Data.Char

-- Convert all characters in a string to uppercase
stringToUpper :: String -> String
stringToUpper "" = ""
stringToUpper (sh:st) = [toUpper sh] ++ stringToUpper st
