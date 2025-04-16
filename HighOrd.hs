app :: (a -> b) -> a -> Maybe b
app f x = Just (f x)

-- app ( + 1) 5
-- app ( \x -> x + 1) 5
add1 :: Int -> Int
add1 x = x + 1
