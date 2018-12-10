-- Get the area of a triangle

triangleAreaWithS :: Float -> Float -> Float -> Float -> Float
triangleAreaWithS a b c s = sqrt( s * (s - a) * (s - b) * (s - c))

triangleArea :: Float -> Float -> Float -> Float
triangleArea a b c = triangleAreaWithS a b c ((a + b + c) / 2)
