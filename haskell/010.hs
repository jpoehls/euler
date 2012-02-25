{-
http://projecteuler.net/problem=10

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
-}

euler010 :: Int
euler010 = sum (allPrimesUnder 2000000)

main = putStrLn (show euler010)

-- Determine if the given number is a prime or not.
isPrime :: Int -> Bool
isPrime 2 = True
isPrime x = null [ y | y <- [3,5..((ceiling . sqrt . fromIntegral) x)], x `mod` y == 0]

-- Gets all primes under the given number.
allPrimesUnder :: Int -> [Int]
allPrimesUnder n = takeWhile (< n) (2:[x | x <- [3,5..], isPrime x])
