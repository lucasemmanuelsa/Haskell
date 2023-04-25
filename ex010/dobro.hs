dobro :: [Int] -> [Int]
dobro l1 = [n*2 | n <-l1]

dobro2 :: [Int] -> [Int]
dobro2 [] = []
dobro2 (x:xs) = [x * 2] ++ dobro xs

main :: IO()
main = do
    print (dobro [2,4,5,2,1])
    print (dobro2 [2,4,5,2,1])