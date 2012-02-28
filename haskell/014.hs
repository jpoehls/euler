{-
http://projecteuler.net/problem=14

The following iterative sequence is defined for the set of positive integers:

n -> n/2 (n is even)
n -> 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
-}

-- Gets the lengths of all sequences from 1..1000000
-- and returns the number with the longest sequence.
euler014 :: (Integer, Int)
euler014 = foldl (\a b -> if (snd a) > (snd b) then a else b) (1,1) (goose''' 1000000)

main :: IO ()
main = putStrLn (show euler014)


-- Generates the next number in the sequence.
goose :: Integer -> Integer
goose n
    | even n = div n 2
    | otherwise = 3 * n + 1

-- Generates the sequence defined in the requirements,
-- except it leaves off the first number of the sequence.
goose' :: Integer -> [Integer]
goose' 1 = []
goose' n = (goose n):goose' (goose n)

-- Generates the sequence wth the first number included.
goose'' :: Integer -> [Integer]
goose'' n = n:goose' n

-- Gets a tuple list of all sequences for 1..n with n and the length of the sequence.
goose''' :: Integer -> [(Integer, Int)]
goose''' n = map (\x -> (x, length (goose'' x))) [1..n]
