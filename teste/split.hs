split :: [a] -> Int -> ([a],[a])
split l1 num = (take num l1, drop num l1)