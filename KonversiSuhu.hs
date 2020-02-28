--NIM/Nama			: 16518330/Rifqi Syahri Ramadhani
--Nama File			: KonversiSuhu.hs
--Topik Praktikum	: Ekspresi Dasar
--Tanggal			: 6 Februari 2019
--Deskripsi			: Konversi Suhu Celsius

module KonversiSuhu where
-- Konversi Suhu				- konversiSuhu(t)

-- Definisi dan Spesifikasi
konversiSuhu :: Float -> Char -> Float 
-- konversiSuhu digunakan untuk mengkonversi suhu dari satu satuan Celcius 
-- ke satuan suhu yang lain, yaitu Fahrenheit, Reamur, atau Kelvin. 
-- Berikut adalah rumus untuk melakukan konversi jika suhu dalam derajat Celcius adalah C

-- Realisasi
konversiSuhu t d =	if d == 'R' then
						0.8 * t
					else if d == 'F' then
						(1.8 * t) + 32
					else if d == 'K' then
						t + 273.15
					else
						0
-- Contoh aplikasi--
-- konversiSuhu 50 'R'
