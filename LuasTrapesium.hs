--NIM/Nama			: 16518330/Rifqi Syahri Ramadhani
--Nama File			: LuasTrapesium.hs
--Topik Praktikum	: Ekspresi Dasar
--Tanggal			: 6 Februari 2019
--Deskripsi			: Menghitung Luas Trapesium 

module LuasTrapesium where
-- Luas trapesium				- luasTrapesium(t,s1,s2)

-- Definisi dan Spesifikasi
luasTrapesium :: Float -> Float -> Float -> Float
-- luasTrapesium akan menerima t t, s1, s2 dengan 
--t = tinggi trapesium, 
--s1 = panjang sisi sejajar 1, dan 
--s2 = panjang sisi sejajar 2 
--(asumsikan: t > 0, s1 > 0, s2 > 0, dan s1 tidak sama dengan s2) dan 
--menghasilkan luas trapesium berdasarkan rumus: luas = ½ * t * (s1 + s2)

-- Realisasi
luasTrapesium t s1 s2 = 0,5 * t * (s1 + s2)
 
-- Contoh aplikasi--
--luasTrapesium 2 3 5
