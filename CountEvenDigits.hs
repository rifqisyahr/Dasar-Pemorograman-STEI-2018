--NIM/Nama			: 16518330/Rifqi Syahri Ramadhani
--Nama File			: CountEvenDigits.hs
--Topik Praktikum	: Analisis Rekursif dan List
--Tanggal			: 20 Februari 2019
--Deskripsi			: Menghitung banyak digit genap


module CountEvenDigits where 
--DESKRIPSI DAN SPESIFIKASI
countEvenDigits :: Int -> Int
-- fungsi akan menghitung digit genap dari sebuah integer

--REALISASI 
countEvenDigits a = if a < 10 then
						if (mod a 2 == 0) then 
							1
						else 
							0
					else if (mod a 2 == 0) then 
						1 + countEvenDigits (div a 10)
					else 
						countEvenDigits (div a 10)

					   
