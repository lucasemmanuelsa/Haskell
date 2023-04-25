rotate :: [Int] -> Int -> [Int]
rotate [] n = []
rotate l1 0 = l1
rotate (x:xs) n = rotate (xs ++ [x]) (n-1)

main :: IO()
main = do
    print(rotate [5,4..1] 4)