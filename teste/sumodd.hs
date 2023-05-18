
sumodd :: [Int] -> Int
sumodd l1 = do
    let l2 = filter (\x -> ehImpar x) l1
    let l3 = map (\x -> x ^ 2) l2
    sum l3


ehImpar :: Int -> Bool
ehImpar num = if mod num 2 == 0 then False else True