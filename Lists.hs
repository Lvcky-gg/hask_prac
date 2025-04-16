import Data.List

listOne :: a -> [a]
listOne x = [x]

listTwo :: [a] -> a
listTwo (x : xs) = x

asc :: (Ord t, Num t) => t -> t -> [t]
asc n m
  | m < n = []
  | m == n = [m]
  | m > n = n : asc (n + 1) m

getHead :: [a] -> a
getHead [] = error "Empty list"
getHead (x : _) = x

getTail :: [a] -> [a]
getTail [] = error "Empty list"
getTail (_ : xs) = xs

forLoop :: p -> (a -> b) -> [a] -> [b]
forLoop n = map

printList :: (Show a) => [a] -> IO ()
printList [] = return ()
printList (x : xs) = do
  print x
  printList xs

comprehension :: (Ord a, Num a) => [a] -> [a]
comprehension x = [2 * x | x <- x, x > 1]

sumUp :: (Num a) => [a] -> a
sumUp (x : xs) = x + sum xs

evens :: (Integral a) => [a] -> [a]
evens [] = []
evens (x : xs)
  | even x = x : evens xs
  | otherwise = evens xs

elems :: (Eq a) => a -> [a] -> Bool
elems _ [] = False
elems y (x : xs)
  | y == x = True
  | otherwise = elems y xs

nubs :: (Eq a) => [a] -> [a]
nubs [] = []
nubs (x : xs)
  | x `elem` xs = nub xs
  | otherwise = x : nub xs

isAsc :: (Ord a) => [a] -> Bool
isAsc [] = True
isAsc [x] = True
isAsc (x : y : xs)
  | x > y = False
  | otherwise = isAsc (y : xs)

hasPath :: [(Int, Int)] -> Int -> Int -> Bool
hasPath [] _ _ = False
hasPath ((x, y) : xs) a b
  | x == a && y == b = True
  | otherwise = hasPath xs a b