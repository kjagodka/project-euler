import Data.List

isPalindrome :: Integer -> Bool
isPalindrome n =
  show n == reverse (show n)

main = do
  let products = [x * y | x <- [100..999], y <- [100..x]]
  print $ last $ sort $ filter isPalindrome products
