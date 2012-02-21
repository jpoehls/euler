{-
http://projecteuler.net/problem=5

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
-}

euler005 :: Integer
euler005 = head [x | x <- [1..], (length (takeWhile (==0) (map (\y -> mod x y) [1..20]))) == 20]

main = putStrLn (show euler005)