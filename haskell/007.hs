{-
http://projecteuler.net/problem=7

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
-}

euler007 :: Int
euler007 = nthPrime 10001

-- Determine if the given number is a prime or not.
isPrime :: Int -> Bool
isPrime 2 = True
isPrime x = null [ y | y <- [3,5..((ceiling . sqrt . fromIntegral) x)], x `mod` y == 0]


-- Find the Nth prime number.
-- Hardcode 2 as the first prime, only check odd numbers after that.
nthPrime :: Int -> Int
nthPrime n = last (take n (2:[x | x <- [3,5..], isPrime x]))