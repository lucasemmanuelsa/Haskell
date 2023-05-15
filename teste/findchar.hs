main :: IO()
main = do
    input <- getLine
    print $ findchar input 'a'


findchar :: String -> Char -> Bool
findchar [] a = False
findchar (x:xs) a = if x == a then True else findchar xs a