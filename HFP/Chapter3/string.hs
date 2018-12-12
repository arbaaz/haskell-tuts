module String where

isPalindrome :: String -> Bool
isPalindrome x = reverse x == x

myAbs x =
  if x
    then x
    else x + 1

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))
-- f (a, b) (c, d) = ((b, d), (a, c))
