data Tree a = Null | Node a (Tree a) (Tree a)
    deriving (Read, Show)

addNode :: Ord a => a -> Tree a -> Tree a
addNode x Null = Node x Null Null
addNode x (Node value left right)
    | (value == x) = Node x left right
    | (x < value) = Node value (addNode x left) right
    | (x > value) = Node value left (addNode x right)

makeTree :: Ord a => [a] -> Tree a
makeTree [] = Null
makeTree (ah:at) = addNode ah tree
    where tree = makeTree at

inOrder :: Tree a -> [a]
inOrder Null = []
inOrder (Node value left right) = inOrder left ++ [value] ++ inOrder right
