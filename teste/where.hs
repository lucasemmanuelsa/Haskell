bmiTell :: Float -> Float -> String
bmiTell w h
    |bmi <= 18.5 = "Under"
    |bmi <= 25.0 = "Regular"
    |otherwise = "Over"
    where bmi = w * h ^ 2