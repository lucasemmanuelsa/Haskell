toList :: String -> [String]
toList frase = words frase

removeStopWords :: [String] -> [String]
removeStopWords [] = []
removeStopWords (x:xs) = if lenString x > 3 then [x] ++ removeStopWords xs else removeStopWords xs

lenString :: String -> Int
lenString "" = 0
lenString (x:xs) = 1 + lenString xs

toString :: [String] -> String
toString l1 = unwords $ removeStopWords l1

main :: IO()
main = do
    input <- getLine
    let lista = toList input
    print(toString lista)
