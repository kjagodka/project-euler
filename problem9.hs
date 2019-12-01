main = do
  print $ head [a * b * c | a <- [1..1000], b <- [a..1000 - a], let c = 1000 - a - b, a*a + b*b == c*c]
