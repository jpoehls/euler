{-
http://projecteuler.net/problem=9

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
-}

euler009 :: Int
euler009 = head (take 1 [a*b*c | a <- [1..1000], b <- [1..1000], c <- [1..1000], a^2 + b^2 == c^2, a < b, b < c, a+b+c == 1000])

main = putStrLn (show euler009)