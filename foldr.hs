
map' f [] = []
map' f xs =  foldr (\y ys -> f y : ys) [] xs

sum' xs = foldr (+) 0 xs

and l = foldr (&&) True l
 
or l = foldr (||) False l

length' xs = foldr (\a b -> 1 + b) 0 xs
