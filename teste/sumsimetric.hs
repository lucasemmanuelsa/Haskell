sumList :: [Int] -> [Int]
sumList (x:[]) = [x]
sumList (x:y:[]) = [x+y]
sumList (x:xs) = [x + last xs] ++ sumList (take ((length xs) - 1) xs)