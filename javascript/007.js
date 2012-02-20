/*
http://projecteuler.net/problem=7

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
*/

var nthPrime = 10001;

function isPrime(num, primes) {
    var sqrtNum = Math.sqrt(num);
    for (var i = 0; i < primes.length; i++) {
        if (primes[i] > sqrtNum) break;
        if (num % primes[i] === 0) return false;
    }
    return true;
}

var primes = [2];

for (var i = 3; true; i++) {
    if (isPrime(i, primes))
        primes.push(i);
    if (primes.length === nthPrime)
        break;
}

console.log('The %d prime is %d. [NODE]', nthPrime, primes[nthPrime-1]);