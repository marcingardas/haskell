-- Adding Two Polynomials

power :: Int -> Int -> Int
power 0 x = x
power p x = x * power (p - 1) x

evalPolyInternal :: Int -> [Int] -> Int
evalPolyInternal x [] = 0
evalPolyInternal x (lh:[]) = lh
evalPolyInternal x (lh:lt) = (lh * power ((length lt) - 1) x) + (evalPolyInternal x lt)

evalPoly :: Int -> [Int] -> Int
evalPoly x l = evalPolyInternal x (reverse l)
