sum :: [Int] -> Int
sum [] = 0
sum (x:xs) = x + sum xs

main :: IO()
main = do
    print(sum [1,3,5,6])