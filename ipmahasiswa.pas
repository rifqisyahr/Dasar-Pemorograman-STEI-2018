Program ipmahasiswa;

var 
	ip : array[0..1000] of real;
	ip2 : array[0..1000] of real;
	r : real;
	i, j, k, l: integer;
	jumlahLulus : integer;
	sum : real;
	
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
	r := 0;
	i := 0;

	ip[0] := -999;
	while r <> -999 do
	begin
		readln(r);
		ip[i] := r;	
		i := i + 1;
	end;
	if ip[0] = -999 then
	begin
		writeln('Tidak ada data');
	end else
	begin
		k := -1;
		for j := 0 to i do 
		begin
			if IsWithinRange (ip[j],0,4) then
			begin
				k := k + 1;
				ip2[k] := ip[j];
			end;
		end;
		
		jumlahLulus := 0;
		sum := 0;
		for l := 0 to k do
		begin
			sum := sum + ip2[l];
			if ip2[l] >= 2.75 then
			begin 
				jumlahLulus := jumlahLulus + 1;
			end;
		end;
		writeln(k);
		writeln(jumlahLulus);
		writeln(k-jumlahLulus);
		if k > 0 then
		begin
			writeln((sum/k):0:2);
		end else
		begin
			writeln(sum:0:2);
		end;
	end;
end.
