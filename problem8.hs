import Data.Char

main = do
  input <- getLine
  let digits = map digitToInt input
  print $ maximum $ map (\index -> product $ take 13 $ drop index digits) [0..length digits - 1]
