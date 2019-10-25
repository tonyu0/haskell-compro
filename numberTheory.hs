-- nCk
comb n k = iterate (scanl1 (+)) [1, 1..] !! (n-k) !! k

-- digit sum
digitSum :: Integer -> Integer
digitSum x
  | x > 0 = mod x 10 + digitSum (div x 10)
  | otherwise = 0

