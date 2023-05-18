longString :: [String] -> [String]
longString l1 = filter (\x -> length x > 5) l1