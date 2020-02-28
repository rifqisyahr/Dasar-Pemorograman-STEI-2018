module DeleteList where

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
					
konso :: Int -> [Int] -> [Int]					
konso e li = [e] ++ li

isEmpty :: [Int] -> Bool
isEmpty l = null l

deleteIf :: [Int] -> (Int -> Bool) -> [Int]
deleteIf l f =	if isEmpty l then
						[]
					else
						if (f (head l)) == True then
							(deleteIf (tail l) f)
						else
							konso (head l) (deleteIf (tail l) f)
