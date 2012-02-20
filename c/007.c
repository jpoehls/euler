#include <stdio.h>
#include <math.h>

const int nthPrime = 10001;

int isPrime(int num, int *primes, int indexOfLastPrime) {
	int i;
	double sqrtNum = sqrt(num);
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

int main()
{
	int primes[nthPrime];
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

	printf("The %d prime is %d. [C]\n", nthPrime, primes[nthPrimeIndex]);

    return 0;
}
