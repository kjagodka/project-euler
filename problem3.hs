primeFactors :: Integer -> [Integer]
primeFactors n =
  primeFactorsHelper n 2 []
  where
    primeFactorsHelper num d primes
      | d * d > num       = num : primes
      | num `mod` d == 0  = primeFactorsHelper (num `div` d) d (d : primes)
      | otherwise         = primeFactorsHelper num (d + 1) primes


main = do
  input <- getLine
  (print . head . primeFactors . read) input
