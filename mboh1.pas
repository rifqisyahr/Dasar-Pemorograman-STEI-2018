Program Bangun;
{ Input: TitikAwal dan sejumlah instruksi pergerakan membentuk
bangun }
{ Output: Kuadran mana saja yang dilewati oleh Titik }
{ KAMUS }
type
	Titik = record
		X : integer;
		Y : integer;
	end;
var
	T : Titik; { Titik Awal dan hasil pergerakan }
	i : integer;
	ins : string; { masukan instruksi }
	n : integer; { masukan jumlah langkah }
{ Fungsi dan Prosedur }
function Kuadran (T : Titik) : integer;
{ Menghasilkan kuadran posisi T dalam koordinat kartesius }
function GeserTitik (T : Titik; ins : string; n : integer) : Titik;
{ Menghasilkan Titik akhir pergerakan T berdasarkan instruksi ins
yang dijalankan dengan langkah sebanyak n }
{ Alternatif: buat 4 fungsi untuk tiap instruksi }


procedure BacaTitikAwal (var T : Titik);
{ Membaca masukan T sebagai titik awal dan memvalidasi apakah T
berada di kuadran 1 }
{ I.S.: T sembarang }
{ F.S.: T terdefinisi dan berada di kuadran 1 }
{ Memanfaatkan fungsi Kuadran untuk pemeriksaan posisi kuadran }
{ Program Utama }
begin
	BacaTitikAwal(T);
	for i := 1 to 4 do { skema pengulangan repeat-n-times }
	begin
		read(ins);
		read(n);
		T := GeserTitik(T, ins, n);
		writeln('Kuadran dilewati: ',Kuadran(T));
	end;
end.
