generateFib :: Integer -> [Integer]
generateFib n =
  generateFibHelper 0 1 []
  where
    generateFibHelper a b acc
      | a <= n    = generateFibHelper b (a + b) (a : acc)
      | otherwise = reverse acc

main = do
  let fibNumbers = generateFib 4000000
  print (sum (filter even  fibNumbers))
