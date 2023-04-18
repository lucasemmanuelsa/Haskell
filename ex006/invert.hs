main :: IO()
main = do
    input <- getLine
    let num = read(input)
    if num == -1 then  else main
    print num
