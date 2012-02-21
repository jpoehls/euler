{-
http://projecteuler.net/problem=16

2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?
-}

import Char

euler016 :: Int
euler016 = sum digitsToAdd

main = putStrLn (show euler016)

digitsToAdd = map digitToInt (show (2^1000))