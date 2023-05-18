import Data.Char
upperList :: [String] -> [String]
upperList l1 = map (\x -> map toUpper x) l1