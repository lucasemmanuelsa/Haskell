comp :: [Int] -> [Int]
comp l1 = [n^2 | n <- l1]

main :: IO()
main = do
    print(comp [1,3,5,6])