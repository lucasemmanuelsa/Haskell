isEven :: Int -> Bool
isEven 0 = True
isEven x = if isEven (x-1) == True then False else True


main :: IO()
main = do
    input <- getLine
    let num = read(input)
    print (isEven num)