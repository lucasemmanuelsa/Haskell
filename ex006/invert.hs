main :: IO()
main = do
    input <- getLine
    let num = read(input)
    if num == -1 then putStr "" else do
        main
        print num