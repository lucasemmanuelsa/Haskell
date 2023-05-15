ehPar :: Int -> Bool
ehPar x = if mod x 2 == 0 then True else False

--ghci> map ehPar [1,2,3,4]
--[False,True,False,True]
--ghci> map ("Sr. " ++) ["Joao", "Pedro", "Luiz"]
--["Sr. Joao","Sr. Pedro","Sr. Luiz"]
--ghci> map (\x -> x * 2) [1,2,3,4,5]
--[2,4,6,8,10]
--ghci> [x*2| x <- [1,2,3,4,5]]
--[2,4,6,8,10]
--ghci
--ghci> filter (\x -> head x == 'a') ["banana", "abacaxi", "laranja", "maçã"]
--["abacaxi"]