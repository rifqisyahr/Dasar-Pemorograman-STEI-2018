-- NIM/Nama		: 16518330/Rifqi Syahri Ramadhani
-- Nama file	: MaxOdd.hs
-- Topik		: Analisis Rekursif dan List
-- Tanggal		: 25 Februari 2019
-- Deskripsi	: Menentukan bilangan ganjil terbanyak dan frekuensinya di dalam list

module MaxOdd where
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

-- DEFINISI DAN SPESIFIKASI
countX :: [Int] -> Int -> Int
-- cntX l m, mengembalikan nilai yang merupakan banyaknya m yang ada di list of integer l
-- REALISASI
countX l x = 	if (isEmpty l) then 
					0
				else if (x == (head l)) then 
					(1 + countX (tail l) x)
				else 
					countX (tail l) x


-- DEFINISI DAN SPESIFIKASI
maxOdd :: [Int] -> (Int, Int)
-- maxOdd l mengembalikan tuple (bilangan ganjil, frekuensi di list l)
-- jika ada bilangan ganjil dengan frekuensi yang sama, yang diambil yang lebih dulu muncul
-- jika tidak ada bilangan ganjil mengembalikan (-1,0)
-- REALISASI
maxOdd l = 	if (isEmpty l) then 
				(-1,0)
			else if (mod (head l) 2 == 1) then
				let
					(m, n) = maxOdd (tail l)
					countPos = countX l (head l)
				in
					if (countPos >= n) then 
						(head l, countPos)
					else 
						(m, n)
			else 
				maxOdd (tail l)
