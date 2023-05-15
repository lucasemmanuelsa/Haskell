ehPar :: Int -> Bool
ehPar n
    |n == 0 = True
    |mod n 2 == 0 = True
    |otherwise = False

quadPar :: [Int]
quadPar = [n ^ 2 | n <- [1..60], ehPar n]

