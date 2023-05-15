main :: IO()
main = do
    let l1 = [1,2,3,4,5]
    print [n^2 | n <- l1]
    let l2 = ["String", "a", "desde", " ", "cedo", "abacaba"]
    print [removeChar n 'a'| n <- l2]


removeChar :: String -> Char -> String
removeChar [] a = ""
removeChar (x:xs) a = if x == a then removeChar xs a else x:removeChar xs a