
freeTree = let d1 = [8, -1, -1] 
               d2 = [9, -1, -1] 
               d3 = [1, -1, -1] 
               c1 = [2, d1, d2] 
               c2 = [6, -1, d3]
               c3 = [3, -1, -1] 
               b1 = [4, c1, -1] 
               b2 = [7, c2, c3]  
               a = [5, b1, b2]
           in a

           

--inOrd -1 = []
--inOrd (x, t0, t1) = inOrd (map (\(x, t0, t1) -> t0)freeTree) ++ [x] ++ inOrd (map (\(x, t0, t1) -> t1)freeTree)

