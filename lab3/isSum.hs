-- Check if one of the ints is a sum of the other two

isSumSimple :: Int -> Int -> Int -> Bool
isSumSimple a b c = (a + b) == c

isSum :: Int -> Int -> Int -> Bool
isSum a b c = isSumSimple a b c || isSumSimple a c b || isSumSimple c b a
