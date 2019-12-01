isMultiple n =
  n `mod` 3 == 0 || n `mod` 5 == 0

main = do
  let multiples = filter isMultiple [1..999]
  print (sum multiples)
