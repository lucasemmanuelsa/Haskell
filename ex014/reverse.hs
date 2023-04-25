rev :: [t] -> [t]
rev [] = []
rev (x:xs) = rev xs ++ [x]

main :: IO()
main = do
    print(rev [1..20])