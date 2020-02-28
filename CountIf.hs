module CountIf where

isLebih5 :: Int -> Bool
isLebih5 a =	if (a > 5) then
					True
				else
					False

isBetween :: Int -> Bool
isBetween a =	if (a >= 0) && (a <= 100) then
					True
				else
					False

isEqual10 :: Int -> Bool
isEqual10 a =	if (a == 10) then
					True
				else
					False

isEmpty :: [Int] -> Bool
isEmpty l = null l

countIf :: [Int] -> (Int -> Bool) -> Int
countIf l f =	if isEmpty l then
					0
				else
					if (f (head l)) == True then
						1 + (countIf (tail l) f)
					else
						(countIf (tail l) f)
