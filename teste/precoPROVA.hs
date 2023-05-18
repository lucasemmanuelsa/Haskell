preco :: [String] -> Float
preco [] = 0
preco (x:xs) = verificapreco x + preco xs

verificapreco :: String -> Float
verificapreco str = if qntvogais str > 3 then fromIntegral (length str) / 2.0 else fromIntegral (length str)

qntvogais :: String -> Int
qntvogais [] = 0
qntvogais (x:xs) = if x `elem` ['a','e','i','o','u'] then 1 + qntvogais xs else qntvogais xs