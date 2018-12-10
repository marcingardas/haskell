-- Return shortest list

getShorterList :: [a] -> [a] -> [a]
getShorterList l1 l2
  | length l1 <= length l2 = l1
  | otherwise = l2

shortest :: [[a]] -> [a]
shortest [] = []
shortest (h:[]) = h
shortest (h:t) = getShorterList h (shortest t)
