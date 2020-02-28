Program barang;

var
	N, i : integer;
	harga, hargaTotal : integer;
begin
	hargaTotal := 0;
	readln(N);
	for i := 0 to N-1 do
	begin
		readln(harga);
		hargaTotal := hargaTotal + harga;
	end;
	writeln(hargaTotal);
end.
