pares :: Int -> Int -> Int -> Int -> [(Int, Int)]
pares a b c d = [(x,y) | x <- [a..b], y <-[c..d]]

main :: IO()
main = do
    print (pares 0 3 0 4)