main = print x
  where 
    limit = 4000000
    x = sum $ filter even $ filter (< limit) $ take 100 fibs
    fibs = 1: 2: [a + b | (a,b) <- zip fibs (tail fibs)]
