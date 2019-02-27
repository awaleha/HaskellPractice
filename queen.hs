main = do
 putStrLn "Enter n: "
 n <- getLine
 boardSize = createBoard n


createBoard x = let a = read x :: Int
 in () 

