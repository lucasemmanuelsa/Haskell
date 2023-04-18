cardapio :: String -> Int
cardapio string
    |string == "cafe" = 4
    |string == "pao" = 2
    |string == "suco" = 5
    |string == "pao de queijo" = 5
    |string == "sanduiche" = 3
    |otherwise = 0

conta :: Int -> Int -> IO()
conta x y = do
    input <- getLine
    let string = (input)
    let valor = (cardapio string) + y
    if x == 1 then print valor else conta (x - 1) valor

main :: IO()
main = do
    input <- getLine
    let num = read(input)
    conta num 0