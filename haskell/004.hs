{-
http://projecteuler.net/problem=4

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

Find the largest palindrome made from the product of two 3-digit numbers.
-}

euler004 :: Int
euler004 = maximum [a*b | a <- [100..999], b <- [100..999], isPalindrome (a*b)]

isPalindrome :: Int -> Bool
isPalindrome a = (reverse (show a)) == (show a)

main = putStrLn (show euler004)