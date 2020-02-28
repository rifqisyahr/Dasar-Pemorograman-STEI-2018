--NIM/Nama			: 16518330/Rifqi Syahri Ramadhani
--Nama File			: UkuranBaju.hs
--Topik Praktikum	: Ekspresi Dasar
--Tanggal			: 6 Februari 2019
--Deskripsi			: Menghitung Luas LIngkaran

module UkuranBaju where
-- Ukuran Baju				- ukuranBaju(r)

-- Definisi dan Spesifikasi
ukuranBaju :: Int -> Int -> Int
-- fungsi ukuranBaju yang menerima masukan 2 buah integer positif, 
--misalnya t (tinggi badan dalam cm) dan 
--b (berat badan dalam kg) dan 
--menghasilkan kode ukuran baju (1 adalah M, 2 adalah L, 3 adalah XL) 
--atau kode 4 adalah untuk yang tidak mendapatkan kaos. 

-- Realisasi
ukuranBaju t b 	= 	if t <= 150 then
						1
				 	else if t > 150 && t <= 170 && b > 60 && b <= 80 then
						2
					else if t > 150 && t <= 170 && b > 80 then
						3
					else if t > 170 && b > 60 && b <= 80 then
						3
					else if t > 170 && b <= 60 then
						2
					else
						4
						

 
-- Contoh aplikasi--
--ukuranBaju 150 60   
