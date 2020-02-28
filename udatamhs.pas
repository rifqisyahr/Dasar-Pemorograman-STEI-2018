//Nama : Rifqi Syahri Ramadhani
//NIM : 16518330

unit udatamhs;

interface
   const
      NMax = 100;

   type
      dataMhs = record
                   NIM : string;
                   KdKul : string;
                   Nilai : integer;
                end;
              
      tabNilaiMhs = record
                       TMhs : array [1..NMax] of dataMhs;
                       Neff : integer;
                    end;
                    
   function EOP (rek : dataMhs) : boolean;
   (* Fungsi untuk menentukan apakah masukan merupakan mark atau bukan*)
   
   procedure LoadDataNilai (filename : string; var T : tabNilaiMhs);
   (* Prosedur untuk membaca data nilai dari suatu file
    * { I.S. : filename terdefinisi, T sembarang }
      { F.S. : Tabel T terisi nilai mahasiswa dengan data yang dibaca     
               dari file dengan nama = filename.
               T.Neff = 0 jika tidak ada file atau kosong;
               T diisi dengan seluruh isi file atau sampai T penuh. }*)
   
   procedure UrutNIMAsc (var T : tabNilaiMhs);
   (* Prosedur untuk mengurutkan NIM pada data nilai mahasiswa
    * { I.S. : T terdefinisi; T mungkin kosong }
      { F.S. : Isi tabel T terurut membesar menurut NIM.
               T tetap jika T kosong. }
    * Algoritma : Insertion Sort*)
   
   procedure HitungRataRata (T : tabNilaiMhs);
   (* Prosedur untuk menghitung nilai rata-rata setiap mahasiswa
    * { I.S. : T terdefinisi; T mungkin kosong }
      { F.S. : Menampilkan nilai rata-rata setiap mahasiswa yang ada dalam tabel dengan format:
               <NIM>=<rata-rata>
               Nilai rata-rata dibulatkan ke integer terdekat. Gunakan fungsi round.
               Jika tabel kosong, tuliskan "Data kosong" }*)
               
   procedure SaveDataNilai (filename : string; T : tabNilaiMhs);
   (* Prosedur untuk menyimpan data ke dalam file eksternal
    * { I.S. : T dan filename terdefinisi; T mungkin kosong }
      { F.S. : Isi tabel T dituliskan pada file dg nama = filename }*)

implementation
   function EOP (rek : dataMhs) : boolean;
      begin
         if (rek.NIM = '99999999') and (rek.KdKul = 'XX9999') and (rek.Nilai = -999) then
            begin
               EOP := True;
            end
         else
            begin
               EOP := False;
            end;
      end;
   
   procedure LoadDataNilai (filename : string; var T : tabNilaiMhs);
      var
         F : file of dataMhs;
         Data : dataMhs;
      
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
                     T.TMhs [T.Neff] := Data;
                  end;
            end;
         until (EOP (Data) or (T.Neff = NMax));            
      end;
   
   procedure UrutNIMAsc (var T : tabNilaiMhs);
      var
         Check, i, j : integer;
         Temp : dataMhs;
         stop : boolean;
   
      begin
         for Check := 2 to T.Neff do
            begin
               Temp := T.TMhs [Check];
               i := Check - 1;
               j := 1;
               stop := False;
               repeat
                  begin   
                     while (ord (T.TMhs [i].NIM [j]) > ord (Temp.NIM [j])) and (i > 1) do
                        begin
                           T.TMhs [i + 1] := T.TMhs [i];
                           i := i - 1;
                        end;
                     if (ord (T.TMhs [i].NIM [j]) < ord (Temp.NIM [j])) or (T.TMhs [i].NIM = Temp.NIM) then
                        begin
                           T.TMhs [i + 1] := Temp;
                           stop := True;
                        end
                     else if (ord (T.TMhs [i].NIM [j]) > ord (Temp.NIM [j])) then
                        begin
                           T.TMhs [i + 1] := T.TMhs [i];
                           T.TMhs [i] := Temp;
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
   
   procedure HitungRataRata (T : tabNilaiMhs);
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
                           Sum := Sum + T.TMhs [i].Nilai;
                           i := i + 1;
                        end;
                     until (T.TMhs [i].NIM <> T.TMhs [i-1].NIM);                      
                     Average := (Sum / Count);
                     writeln (T.TMhs [i-1].NIM, '=', round (Average));
                  end;
            end;
      end;
   
   procedure SaveDataNilai (filename : string; T : tabNilaiMhs);
      var
         F : file of dataMhs;
         i : integer;
         Mark : dataMhs;
      
      begin
         Mark.NIM := '99999999';
         Mark.KdKul := 'XX9999';
         Mark.Nilai := -999;
         assign(F, filename);
         rewrite(f);
         for i := 1 to T.Neff do
            begin
    		   write(f, T.TMhs[i]);
    		end;
    	 write(f, mark);
    	 close(f);
      end;
end.
