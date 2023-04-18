dobro :: Int -> Int
dobro x = x * 2

main :: IO()
main = do
    input <- getLine
    let num = dobro (read(input))
    print num
