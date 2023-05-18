intercalaLista :: [Int] -> [Int] -> [Int]
intercalaLista [] l2 = l2
intercalaLista l1 [] = l1
intercalaLista (x:xs) (a:as) = if x <= a then [x] ++ intercalaLista xs (a:as) else [a] ++ intercalaLista (x:xs) as