addespaco :: Int -> String
addespaco 1 = " "
addespaco n = " " ++ addespaco (n-1)

paraDireita :: Int -> String -> String
paraDireita n string = addespaco n ++ string