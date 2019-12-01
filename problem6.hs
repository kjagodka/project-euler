square n = n * n

main = do
  let numbers = [1..100]
  let sumSquares = sum $ map square numbers
  let squareSum = square $ sum numbers
  print (squareSum - sumSquares)
