--NIM/Nama			: 16518330/Rifqi Syahri Ramadhani
--Nama File			: LuasLingkaran.hs
--Topik Praktikum	: Ekspresi Dasar
--Tanggal			: 6 Februari 2019
--Deskripsi			: Menghitung Luas LIngkaran

module LuasLingkaran where
-- Luas Lingkaran				- luasLingkaran(r)

-- Definisi dan Spesifikasi
luasLingkaran :: Float -> Float
-- LuasLingkaran akan menerima angka kemudian menghitungnya menjadi 
-- luas lingkaran dengan pi = 3.1415
-- Berdasarkan rumus = pi * r * r

-- Realisasi
luasLingkaran r = 
	let pi = 3.1415
	in 
		pi * r * r
 
-- Contoh aplikasi--
-- luasLingkaran 5   
