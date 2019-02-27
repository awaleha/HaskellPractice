--CPS506 Assignment 2
--Awale Hassan 500704868
--Michael Gorokhovsky 500681974
--Cassandra Ferworn 500687062

data Tree = Empty | Tree {num :: Int, t0 :: Tree, t1 :: Tree} deriving (Show) -- defines tree, either empty or holds one variable and two other trees

freeTree1 :: Tree  -- outputs a full binary tree, with in order of [8,2,9,4,5,6,1,7,3]

freeTree1 =   
    Tree 5 -- root
        (Tree 4  -- left of root
            (Tree 2 -- left of 4
                (Tree 8 Empty Empty)  -- left of 2
                (Tree 9 Empty Empty)  -- right of 2
            )  
           Empty )  -- right of 4
        (Tree 7  -- right of root
            (Tree 6  -- left of 7
                Empty --left of 6
                (Tree 1 Empty Empty)  -- right of 6
            )
            (Tree 3 Empty Empty)  --right of 7
        )  

freeTree2 :: Tree --  outputs a full binary tree, with in order of [9,5,1,7,2,12,8,4,3,11]

freeTree2 = 
    Tree 8 
     (Tree 5 
        (Tree 9 Empty Empty)
        (Tree 7 
            (Tree 1 Empty Empty)
            (Tree 12 
                (Tree 2 Empty Empty)
                Empty)))
     (Tree 4 
        Empty
        (Tree 11 
            (Tree 3 Empty Empty)
            Empty))

inOrd :: Tree -> [Int]
inOrd Empty = [] -- pattern match for empty, returns empty list
inOrd (Tree num t0 t1) = inOrd t0 ++ [num] ++ inOrd t1 -- pattern match for tree, recursivley calls left half of tree, adds to list, adds n to list, recursivley calls right half of tree and adds to list

preOrd :: Tree -> [Int]
preOrd Empty = [] -- pattern match for empty, returns empty list
preOrd(Tree num t0 t1) = [num] ++ preOrd t0 ++ preOrd t1 -- pattern match for tree, first adds n to list, then recursivley calls left half of tree, adds to list, then recursivley calls right half of tree, adds to list

postOrd :: Tree -> [Int]
postOrd Empty = [] -- pattern match for empty, returns empty list
postOrd(Tree num t0 t1) = postOrd t0 ++ postOrd t1 ++ [num] -- pattern match for tree, recursivley calls left half of tree, adds to list, then right half, adds to list, then adds n to list

main = do
    putStrLn "Binary tree in-order Case 1: "
    print $ inOrd freeTree1
    putStrLn "Binary tree pre-order Case 1: "
    print $ preOrd freeTree1
    putStrLn "Binary tree post-order Case 1: "
    print $ postOrd freeTree1
    putStrLn "Binary tree in-order Case 2: "
    print $ inOrd freeTree2
    putStrLn "Binary tree pre-order Case 2: "
    print $ preOrd freeTree2
    putStrLn "Binary tree post-order Case 2: "
    print $ postOrd freeTree2