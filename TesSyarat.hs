--NIM/Nama			: 16518330/Rifqi Syahri Ramadhani
--Nama File			: TesSyarat.hs
--Topik Praktikum	: Ekspresi Dasar
--Tanggal			: 6 Februari 2019
--Deskripsi			: Menentukan Beasiswa

module TesSyarat where
-- Tes Syarat				- tesSyarat()

-- Definisi dan Spesifikasi
tesSyarat :: Float -> Float -> Float
--  tesSyarat yang menerima input 2 buah bilangan riil (float), 
--misalnya ip dan pot, dengan ip mewakili IP mahasiswa (bernilai 0..4) dan 
--pot mewakili pendapatan orang tua (dalam juta rupiah, bernilai >= 0) dan 
--menghasilkan kategori beasiswa (bernilai 0..4) yang berhak didapatkan
--oleh mahasiswa tersebut sesuai ketentuan di atas 
--(jika kategori 0, berarti mahasiswa tersebut tidak berhak atas beasiswa).

-- Realisasi
tesSyarat ip pot =	if ip >= 3.5 then
						4
					else if ip < 3.5 && pot < 1 then
						1
					else if ip < 3.5 && ip >= 2.0 && pot >= 1 && pot < 5 then
						3
					else if ip < 2.0 && pot >= 1 && pot < 5 then
						2
					else 
						0

 
-- Contoh aplikasi--
-- tesSyarat 1.0 1 
