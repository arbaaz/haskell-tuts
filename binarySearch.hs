search x [] = False
search x xs
  | x < y = search x l1
  | x > y = search x l2
  | otherwise = True
  where
    len = length xs `div` 2
    l1 = take len xs
    (y:l2) = drop len xs
