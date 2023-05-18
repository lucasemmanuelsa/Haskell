intercalaLista :: [Int] -> [Int] -> [Int]
intercalaLista [] [] = []
intercalaLista [x] [] = [x]
intercalaLista [] [y] = [y]
intercalaLista (x:xs) [] = (x:xs)
intercalaLista [] (y:ys) = (y:ys)
intercalaLista (x:xs) (y:ys) 
    | x < y = [x] ++ intercalaLista xs (y:ys)
    | y < x = [y] ++ intercalaLista (x:xs) ys
    | otherwise = [x,y] ++ intercalaLista xs ys