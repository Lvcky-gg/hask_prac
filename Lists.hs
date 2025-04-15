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