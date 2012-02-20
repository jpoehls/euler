/*
http://projecteuler.net/problem=7

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
*/

using System;

namespace Euler
{
	public class Program
	{
		private const int nthPrime = 10001;
		
		private static int isPrime(int num, int[] primes, int indexOfLastPrime) {
			int i;
			double sqrtNum = Math.Sqrt(num);
			for (i = 0; i < (indexOfLastPrime + 1); i++) {
				if (primes[i] > sqrtNum) {
					break;
				}
				if (num % primes[i] == 0) {
					return 0;
				}
			}
			return 1;
		}
		
		public static void Main (string[] args)
		{
			int[] primes = new int[nthPrime];
			primes[0] = 2;
		
			const int nthPrimeIndex = nthPrime - 1;
			int indexOfLastPrime = 0;
		
			int i;
			for (i = 3; 1 == 1; i++) {
				if (isPrime(i, primes, indexOfLastPrime) == 1) {
					indexOfLastPrime += 1;
					primes[indexOfLastPrime] = i;
				}
				if (indexOfLastPrime == nthPrimeIndex) {
					break;
				}
			}
		
			Console.WriteLine("The {0} prime is {1}. [CSHARP]\n", nthPrime, primes[nthPrimeIndex]);
		}
	}
}
