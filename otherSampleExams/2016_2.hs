-- Evaluate boolean expression

data Bexp = Bvalue Bool | And Bexp Bexp | Or Bexp Bexp | Not Bexp

evaluate :: Bexp -> Bool
evaluate (Bvalue b) = b
evaluate (And b1 b2) = evaluate b1 && evaluate b2
evaluate (Or b1 b2) = evaluate b1 || evaluate b2
evaluate (Not b) = not (evaluate b)
