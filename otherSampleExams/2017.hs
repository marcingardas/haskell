-- Convert binary string to decimal integer

binaryToDecimalInternal:: String -> Int
binaryToDecimalInternal [] = 0
binaryToDecimalInternal (h:t)
    | h == '1' = (2^(length t)) + binaryToDecimalInternal t
    | otherwise = binaryToDecimalInternal t

binaryToDecimal:: String -> Int
binaryToDecimal s = binaryToDecimalInternal (reverse s)
