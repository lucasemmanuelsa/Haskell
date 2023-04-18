premio :: Int -> Float
premio x
    |x >= 1 && x <= 10 = 100.00
    |x >= 11 && x <= 20 = 200.00
    |x >= 21 && x <= 30 = 300.00
    |x >= 31 && x <= 40 = 400.00
    |otherwise = 500

main :: IO()
main = do
    input <- getLine
    let num = premio (read(input))
    print num