repete :: String -> Int -> IO()
repete str 1 = putStrLn str
repete str n = do
    putStrLn str
    repete str (n-1)