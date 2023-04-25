rep :: Int -> t ->[t]
rep 0 ch = []
rep n ch = ch : rep (n-1) ch