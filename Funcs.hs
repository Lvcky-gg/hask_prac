inRange :: (Ord a) => a -> a -> a -> Bool
inRange min max x =
  x >= min && x <= max

inRangeTwo :: (Ord p) => p -> p -> p -> Bool
inRangeTwo min max x =
  let inLowerBound = min <= x
      inUpperBound = max >= x
   in inLowerBound && inUpperBound

inRangeThree :: (Ord p) => p -> p -> p -> Bool
inRangeThree min max x = ilb && iub
  where
    ilb = min <= x
    iub = max >= x
