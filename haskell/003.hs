{-
http://projecteuler.net/problem=3

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
-}

euler003 :: Integer
euler003 = maximum (primeFactors 600851475143)

main = putStrLn (show euler003)

-- Infinite list of all prime numbers.
primes :: [Integer]
primes = 2:[x | x <- [3,5..], isPrime x]

-- Determine if the given number is a prime or not.
isPrime :: Integer -> Bool
isPrime 2 = True
isPrime x = null [ y | y <- 2:[3,5..((ceiling . sqrt . fromIntegral) x)], x `mod` y == 0]

lowestPrimeFactor :: Integer -> Integer
lowestPrimeFactor n = head (filter (\p -> mod n p == 0) primes)

primeFactors :: Integer -> [Integer]
primeFactors n
    | isPrime n = [n]
    | otherwise = p:primeFactors r
    where p = lowestPrimeFactor n
          r = div n p
