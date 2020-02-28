module IsOddIsEven where

isOdd :: Int -> Bool
isEven :: Int -> Bool

isOdd n=
 if (n==0) then
  False
 else
  isEven (n-1)

isEven n=
 if (n==0) then
  True
 else 
  isOdd(n-1)
