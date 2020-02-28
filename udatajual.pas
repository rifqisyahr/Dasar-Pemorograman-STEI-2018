//Nama : Rifqi Syahri Ramadhani
//NIM : 16518330
 
unit udatajual;

interface
   const
      NMax = 100;
   type
      dataJual = record
                    KdKategori: string;
                    KdProduk : string;
                    Hasil : integer;
                 end;
      tabPenjualan = record
                        TJual : array [1..NMax] of dataJual;
       			        Neff : integer;
                     end;
                     
   function EOP (rek : dataJual) : boolean;
   (* Menghasilkan True jika rek adalah mark*)
   
   procedure LoadDataJual (filename : string; var T : tabPenjualan);
   (* Load data dari file eksternal
    * { I.S. : filename terdefinisi, T sembarang }
    * { F.S. : Tabel T terisi data hasil penjualan dengan data yang dibaca
               dari file dg nama = filename
               T.Neff = 0 jika tidak ada file kosong;
               T diisi dengan seluruh isi file atau sampai T penuh. }*)
   
   procedure UrutKategoriAsc (var T : tabPenjualan);
   (* Mengurutkan berdasarkan kategori
    * { I.S. : T terdefinisi; T mungkin kosong }
    * { F.S. : Isi tabel T terurut membesar menurut KdKategori. T tetap jika T kosong. }
    * { Algoritma : Insertion Sort}*)
   
   procedure HitungRataRata (T : tabPenjualan);
   (* Prosedur untuk menghitung rata-rata hasil penjualan
    * { I.S. : T terdefinisi; T mungkin kosong }
    * { F.S. : Menampilkan nilai rata-rata setiap mahasiswa yang ada dalam tabel
               Jika tabel kosong, tuliskan "Data kosong" }*)
   
   procedure SaveDataJual (filename : string; T : tabPenjualan);
   (* Save data ke file eksternal
    * { I.S. : T dan filename terdefinisi; T mungkin kosong }
    * { F.S. : Isi tabel T dituliskan pada file dg nama = filename } *)   
   
implementation
   function EOP (rek : dataJual) : boolean;
      begin
         if (rek.KdKategori = '99999999') and (rek.KdProduk = 'XX9999') and (rek.Hasil = -999) then
            begin
               EOP := True;
            end
         else
            begin
               EOP := False;
            end;
      end;
  
   procedure LoadDataJual (filename : string; var T : tabPenjualan);
      var
         F : file of dataJual;
         Data : dataJual;
      
      begin
         T.Neff := 0;
         assign (F, filename);
         reset (F);
         repeat
            begin
               read (F, Data);
               if not (EOP (Data)) then
                  begin
                     T.Neff := T.Neff + 1;
                     T.TJual [T.Neff] := Data;
                  end;
            end;
         until (EOP (Data) or (T.Neff = NMax));            
      end;
   
   procedure UrutKategoriAsc (var T : tabPenjualan);
      var
         Check, i, j : integer;
         Temp : dataJual;
         stop : boolean;
   
      begin
         for Check := 2 to T.Neff do
            begin
               Temp := T.TJual [Check];
               i := Check - 1;
               j := 1;
               stop := False;
               repeat
                  begin                       
                     while (ord (T.TJual [i].KdKategori [j]) > ord (Temp.KdKategori [j])) and (i > 1) do
                        begin
                           T.TJual [i + 1] := T.TJual [i];
                           i := i - 1;
                        end;
                     if (ord (T.TJual [i].KdKategori [j]) < ord (Temp.KdKategori [j])) or (T.TJual [i].KdKategori = Temp.KdKategori) then
                        begin
                           T.TJual [i + 1] := Temp;
                           stop := True;
                        end
                     else if (ord (T.TJual [i].KdKategori [j]) > ord (Temp.KdKategori [j])) then
                        begin
                           T.TJual [i + 1] := T.TJual [i];
                           T.TJual [i] := Temp;
                           stop := True;
                        end
                     else
                        begin
                           j := j + 1;
                        end;
                  end;
               until stop;
            end;
      end;
   
   procedure HitungRataRata (T : tabPenjualan);
      var
         Count, Sum, i : integer;
         Average : real;
         
      begin
         if T.Neff = 0 then
            begin
               writeln ('Data kosong');
            end
         else
            begin
               i := 1;
               while (i <= T.Neff) do
                  begin
                     Count := 0;
                     Sum := 0;
                     repeat
                        begin
                           Count := Count + 1;
                           Sum := Sum + T.TJual [i].Hasil;
                           i := i + 1;
                        end;
                     until (T.TJual [i].KdKategori <> T.TJual [i-1].KdKategori);                      
                     Average := (Sum / Count);
                     writeln (T.TJual [i-1].KdKategori, '=', round (Average));
                  end;
            end;
      end;
   
   procedure SaveDataJual (filename : string; T : tabPenjualan);
      var
         F : file of dataJual;
         i : integer;
         Mark : dataJual;
      
      begin
         Mark.KdKategori := '99999999';
         Mark.KdProduk := 'XX9999';
         Mark.Hasil := -999;
         assign(F, filename);
         rewrite(F);
         for i := 1 to T.Neff do
            begin
    		   write(F, T.TJual[i]);
    		end;
    	 write(F, mark);
    	 close(F);
      end;
end.
