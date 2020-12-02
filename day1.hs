import Data.List.Utils

readNumList :: String -> [Int]
readNumList = read . ("[" ++) . (++ "]") . replace ",," "," . replace "\r" "," . replace "\n" ","

day1Main :: [Int] -> Int
day1Main (h:r)
  | elem (2020-h) r = h*(2020-h)
  | otherwise = day1Main r

main = do
  fText <- readFile "day1.txt"
  print $ day1Main $ read fText
