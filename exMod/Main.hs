import Models.Planeta

main :: IO()
main = do
    let jupiter = Planeta "Jupiter" 6992 1234.23
    putStrLn $ nome jupiter
    print $ massa(jupiter)
    print $ show jupiter

teste :: IO()
teste = do
    planeta <- getLine
    let jupiter = read planeta :: Planeta
    putStrLn $ nome jupiter
    putStrLn $ show $ raio jupiter
    putStrLn $ show $ massa jupiter