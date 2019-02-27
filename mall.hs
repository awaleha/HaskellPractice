mall :: (a -> b) -> [a] -> [b]  
mall _ [] = []  
mall f (x:xs) = f x : mall f xs  