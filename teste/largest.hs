largest :: [Int] -> Int
largest [x] = x
largest (x:xs) = max x (largest xs)