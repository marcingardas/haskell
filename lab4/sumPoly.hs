-- Adding Two Polynomials (Passed)

sumPoly :: [Int] -> [Int] -> [Int]
sumPoly [] [] = []
sumPoly [] (l2h:l2t) = concat [[l2h],sumPoly [] l2t]
sumPoly (l1h:[]) (l2h:l2t) = concat [[l1h + l2h],sumPoly [] l2t]
sumPoly (l1h:l1t) [] = concat [[l1h],sumPoly l1t []]
sumPoly (l1h:l1t) (l2h:[]) = concat [[l1h + l2h],sumPoly l1t []]
sumPoly (l1h:l1t) (l2h:l2t) = concat [[l1h + l2h],sumPoly l1t l2t]
