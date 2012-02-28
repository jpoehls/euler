{-
http://projecteuler.net/problem=20

n! means n * (n - 1) * ... * 3 * 2 * 1

For example, 10! = 10 * 9 * ... * 3 * 2 * 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!
-}

import Data.Char

euler020 :: Int
euler020 = sum (map digitToInt (show (bangNumber 100)))

main :: IO ()
main = putStrLn (show euler020)

bangNumber :: Integer -> Integer
bangNumber n = product [1..n]
