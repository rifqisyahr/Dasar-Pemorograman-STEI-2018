--NIM/Nama			: 16518330/Rifqi Syahri Ramadhani
--Nama File			: BuangTujuh.hs
--Topik Praktikum	: Ekspresi Dasar
--Tanggal			: 20 Februari 2019
--Deskripsi			: Membuang angka tujuh dalam list
module BuangTujuh where
-- Membuang angka tujuh			- buangTujuh(l)

-- DEFINISI DAN SPESIFIKASI
buangTujuh :: [Int] -> [Int]
-- fungsi memembuang angka tujuh di dalam list

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
-- REALISASI

buangTujuh l = 	if isEmpty l then
					[]
				else
					if (head l == 7) || (head l == 17) || (head l == 27) || (head l == 37) || (head l == 47) || (head l == 57) || (head l == 67) || (head l == 70) || (head l == 71) || (head l == 72) || (head l == 73) || (head l == 74) || (head l == 75) || (head l == 76) || (head l == 77) || (head l == 78) || (head l == 79) || (head l == 87) || (head l == 97) || (mod (head l) 7 == 0) then
						buangTujuh (tail l)
					else
						konso (head l) (buangTujuh (tail l))
	


