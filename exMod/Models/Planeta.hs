module Models.Planeta where
    data Planeta = Planeta {
        nome :: String,
        massa :: Double,
        raio :: Double
    } deriving (Show, Read)
    