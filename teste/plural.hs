plural :: [String] -> Int
plural list = length ([s | s <- list, ehPlural s])

ehPlural :: String -> Bool
ehPlural [] = False
ehPlural str = if last str == 's' then True else False