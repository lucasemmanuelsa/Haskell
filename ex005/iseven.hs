isEven :: Int -> Bool
isEven x = if (mod x 2) == 0 then True else False 


main :: IO()
main = do
    input <- getLine
    let num = read(input)
    print (isEven num)