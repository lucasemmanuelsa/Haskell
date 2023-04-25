import Text.Printf

validacao :: [Int] -> IO()
validacao [] = putStrLn "nenhum numero foi sorteado"
validacao l1 = itera l1

itera :: [Int] -> IO()
itera [] = printf ""
itera (x:xs) = do
    printf "%d foi sorteado %d vez(es)\n" x (contaElemento x (x:xs))
    itera (remove x (x:xs))

remove :: Int -> [Int] -> [Int]
remove elemento [] = []
remove elemento (x:xs) = if x == elemento then remove elemento xs else [x] ++ remove elemento xs

contaElemento :: Int -> [Int] -> Int
contaElemento elemento [] = 0
contaElemento elemento (x:xs) = if elemento == x then 1 + contaElemento elemento xs else contaElemento elemento xs

main :: IO()
main = do
    input <- getLine
    let lista = read $ input :: [Int]
    validacao lista
        