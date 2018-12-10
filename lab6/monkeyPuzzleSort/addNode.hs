data Tree a = Null | Node a (Tree a) (Tree a)
    deriving (Read, Show)

addNode :: Ord a => a -> Tree a -> Tree a
addNode x Null = Node x Null Null
addNode x (Node value left right)
    | (value == x) = Node x left right
    | (x < value) = Node value (addNode x left) right
    | (x > value) = Node value left (addNode x right)
