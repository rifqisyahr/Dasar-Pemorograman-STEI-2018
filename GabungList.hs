--NIM		: 16518330
--Nama		: Rifqi Syahri Ramadhani
--Tanggal 	: 25 Februari 2019
--Topik		: Analisis Rekursif dan List
--Deskripsi	: Menggabungkan Dua List dan Mengurutkan Elemen di dalamnya

module GabungList where
--DEFINISI DAN SPESIFIKASI
gabungList:: [Int] -> [Int] -> [Int]
-- fungsi akan menggabungkan dua buah list berisi integer dan mengurutkan elemen di dalamnya dari yang terkecil


-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
{- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan 
   e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- last :: [Int] -> Int
-- last l menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [Int] -> [Int]
-- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 

insert :: Int -> [Int] -> [Int]
sort :: [Int] -> [Int]

insert m n = 	if (isEmpty n) then 
					(konso m n) 
				else if (m < (head n)) then 
					(konso m n)
				else if (m ==(head n)) then 
					n
				else 
					(konso (head n) (insert m (tail n)))
sort n = 	if (isEmpty n) then 
				[]
			else 
				(insert (head n) (sort(tail n)))
gabungList m n = 	if (isEmpty m) && (isEmpty n) then 
						[]
					else if (isEmpty m) then 
						(sort n)
					else if (isEmpty n) then 
						(sort m)
					else 
						sort(konso (head m) (gabungList (tail m) n))
