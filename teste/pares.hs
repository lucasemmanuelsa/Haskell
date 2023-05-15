ehPar :: Int -> Bool
ehPar 0 = True
ehPar x = if mod x 2 == 0 then True else False

pares :: Int -> Int -> String
pares n m = if n > m then "" else if ehPar n == True then show n ++ " " ++ pares (n+1) m else pares (n+1) m 