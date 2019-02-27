returnThird x = x!!2

fib 1 = 1
fib 2 = 1
fib x = fib (x-1) + fib (x -2)

quad :: Float -> Float -> Float -> (Float, Float)
quad a b c = ( (-b + sqrt (b*b - (4*a*c))/(2*a)), (-b - sqrt (b*b - (4*a*c))/(2*a)))
