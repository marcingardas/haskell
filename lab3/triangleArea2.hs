-- Get the area of a triangle with error check

triangleAreaWithErrorCheck :: Float -> Float -> Float -> Float
triangleAreaWithErrorCheck a b c = if (area == area) then area else error "Not a triangle!"
 where area = triangleArea a b c
