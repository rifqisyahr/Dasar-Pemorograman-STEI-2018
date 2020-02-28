module FilterList where

isPos :: Int -> Bool
isPos a =	if (a > 0) then
					True
				else
					False

isNeg :: Int -> Bool
isNeg a =	if (a < 0) then
					True
				else
					False

isEqual10 :: Int -> Bool
isEqual10 a =	if (a == 10) then
					True
				else
					False
					
konso :: Int -> [Int] -> [Int]					
konso e li = [e] ++ li

isEmpty :: [Int] -> Bool
isEmpty l = null l

filterList :: [Int] -> (Int -> Bool) -> [Int]
filterList l f =	if isEmpty l then
					[]
				else
					if (f (head l)) == True then
						konso (head l) (filterList (tail l) f)
					else
						(filterList (tail l) f)
