
Program nilai;
var
nilai : integer;
banyakMahasiswa : integer;
banyakLulus : integer;
banyakTakLulus : integer;
total : integer;

function IsWithinRange (X : real; min, max : real) : boolean;
{ Menghasilkan true jika min <= X <= max, menghasilkan false jika tidak }
	begin
		if (X >= min) and (X <= max) then
		begin 
			IsWithinRange := True;
		end else 
		begin	
			IsWithinRange := False;
		end;
	end;

begin
banyakMahasiswa := 0;
banyakLulus := 0;
banyakTakLulus := 0;
total := 0;
readln(nilai);

if (nilai = -9999) then
begin
	writeln('Tidak ada data');
end else
begin
	while (nilai <> -999) do
	begin
		if (IsWithinRange(nilai,0,100)) then
		begin
			banyakMahasiswa := banyakMahasiswa + 1;
			total := total + nilai;
			if (IsWithinRange(nilai,40,100)) then
			begin
				banyakLulus := banyakLulus + 1;
			end else
			begin
				banyakTakLulus := banyakTakLulus+1;
			end;
		end else
		begin
			banyakMahasiswa:=banyakMahasiswa;
			total:=total;
		end;
		readln(nilai);
	end;
	if (banyakMahasiswa=0) then
		begin
		writeln('Data nilai kosong');
		end
	else
		begin
		writeln(banyakMahasiswa);
		writeln(banyakLulus);
		writeln(banyakTakLulus);
		writeln(total/banyakMahasiswa:0:2);
		end;
	end;
end.
