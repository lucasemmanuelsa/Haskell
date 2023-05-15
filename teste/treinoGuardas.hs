conceito :: Float -> Char
conceito nota
    |nota >= 9.0 = 'A'
    |nota >= 7.5 && nota < 9.0 = 'B'
    |nota >= 6.0 && nota < 7.5 = 'C'
    |nota >= 4.0 && nota < 6.0 = 'D'
    |otherwise = 'E'

