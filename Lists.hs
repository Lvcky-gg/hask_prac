listOne :: a -> [a]
listOne x = [x]

listTwo :: [a] -> a
listTwo (x : xs) = x