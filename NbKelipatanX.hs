--NIM/Nama			: 16518330/Rifqi Syahri Ramadhani
--Nama File			: NbKelipatanX.hs
--Topik Praktikum	: Ekspresi Dasar
--Tanggal			: 20 Februari 2019
--Deskripsi			: Banyak kelipatan X
module NbKelipatanX where
-- Banyak Kelipatan X			- nbKelipatanX(m,n,x)

-- DEFINISI DAN SPESIFIKASI
nbKelipatanX :: Int -> Int -> Int -> Int
-- fungsi menghitung banyak kelipatan x antara m dan n

-- REALISASI
nbKelipatanX m n x =	if (m <= n) && (x <= n) then
							if (mod n x) == 0 then
								1 + nbKelipatanX m (n-1) x
							else 
								nbKelipatanX m (n-1) x
						else
							0


