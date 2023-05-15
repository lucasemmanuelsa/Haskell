iesimo :: Int -> [t] -> t
iesimo 1 (x:xs) = x
iesimo n (x:xs) = iesimo (n-1) xs