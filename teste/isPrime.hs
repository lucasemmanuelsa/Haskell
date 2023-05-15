ehPrimo :: Int -> Bool
ehPrimo 1 = True
ehPrimo num = chamaEhPrimo num 2

chamaEhPrimo :: Int -> Int -> Bool
chamaEhPrimo a count = if a == count then True else 
    if a `mod` count == 0 then False else chamaEhPrimo a (count+1)