isPrime 0 = False
isPrime 1 = False
isPrime 2 = True
isPrime n =
  isPrimeHelper n primes
  where
     isPrimeHelper n (p:primes)
       | p * p > n      = True
       | n `mod` p == 0 = False
       | otherwise        = isPrimeHelper n primes

primes = filter isPrime [1..]

main = do
  print $ primes !! 10000
