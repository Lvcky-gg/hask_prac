fac :: (Eq t, Num t) => t -> t
fac n =
  if n == 0
    then 1
    else n * fac (n - 1)

facTwo :: (Ord t, Num t) => t -> t
facTwo n
  | n <= 1 = 1
  | otherwise = n * facTwo (n - 1)

isZero :: (Eq a, Num a) => a -> Bool
isZero 0 = True
isZero _ = False