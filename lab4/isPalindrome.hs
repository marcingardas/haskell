-- Is list palindrome

isPalindromeInternal :: Eq a => [a] -> [a] -> Bool
isPalindromeInternal [] [] = True
isPalindromeInternal (l1h:l1t) (l2h:l2t)
    | (l1h /= l2h) = False
    | otherwise = isPalindromeInternal l1t l2t

isPalindrome :: Eq a => [a] -> Bool
isPalindrome list = isPalindromeInternal list (reverse list)
