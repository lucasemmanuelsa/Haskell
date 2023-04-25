pares :: Int -> Int -> Int -> Int -> [(Int, Int)]
pares a b c d
    |a == b = concatena a c d
    |otherwise = concatena a c d ++ pares (a+1) b c d

concatena :: Int -> Int -> Int -> [(Int,Int)]
concatena a b c
    |b == c = [(a,b)]
    |otherwise = [(a,b)] ++ concatena a (b+1) c

main :: IO()
main = do
    print (concatena 0 0 3)
    print ()