search x [] = False
search x l =
  if x < y
    then search x l1
    else if x > y
      then search x l2
      else True
  where
    len = length l `div` 2
    l1 = take len l
    (y:l2) = drop len l


