main = do
 putStrLn "Enter n: "
 fibnum <- getLine
 let a = read fibnum :: Int
 let n =  fib a 
 let s = show n 
 putStrLn ("Answer: " ++ s)

fib :: Int -> Int
fib 1 = 1
fib 2 = 1
fib x = fib (x-1) + fib (x -2)