len :: [t] -> Int
len [] = 0
len (x:xs) = 1 + len xs

main :: IO()
main = do
    print(len [1..20])