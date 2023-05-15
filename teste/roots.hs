roots :: Float -> Float -> Float -> [Float]
roots a b c
    |delta < 0 = []
    |delta == 0 = [-b/(2*a)]
    |delta > 0 = [(-b + (delta**(1/2))) / 2 * a, (-b - (delta**(1/2))) / 2 * a]
    where delta = (b ** 2) - 4 * a * c