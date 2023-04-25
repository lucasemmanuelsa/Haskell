isEven :: Int -> Bool
isEven n
    |mod n 2 == 0 = True
    |otherwise = False

quadPar :: [Int] -> [Int]
quadPar l1 = [n^2 | n <- l1, isEven n]


main :: IO()
main = do
    print (isEven 4)
    print (quadPar [1..20])