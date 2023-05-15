remove :: String -> String
remove "" = ""
remove str = filter (\x -> upper2 x == True) str

upper :: Char -> Bool
upper a = if filter (\x -> x == a) ['A'..'Z'] == [] then False else True

upper2 :: Char -> Bool
upper2 a = a `elem` ['A'..'Z']

