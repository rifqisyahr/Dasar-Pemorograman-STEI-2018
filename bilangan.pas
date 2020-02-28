Program bilangan;

var
	N, i, X, nOfBil, firstBil : integer;
	bil : array[1..100] of integer;

begin
	readln(N);
	while (N <= 0) or (N > 100) do
	begin
		writeln('Masukan salah. Ulangi!');
		readln(N);
	end;
	
	for i := 1 to N do
	begin
		readln(bil[i]);
	end;
	
	firstBil := 0;
	nOfBil := 0;
	readln(X);
	if X = 0 then
	begin
		for i := 1 to N do
		begin 
			if bil[i] = 0 then
			begin
				nOfBil := i;
			end;
		end;
		if nOfBil = 0 then
		begin
			writeln('Tidak ada 0');
		end else
		begin
			writeln(nOfBil);
		end;
	end else if X = -1 then
	begin
		for i := 1 to N do
		begin 
			nOfBil := nOfBil + 1;
			if bil[i] < 0 then
			begin
				firstBil := bil[i];
			end;
		end;
		if nOfBil = 0 then
		begin
			writeln('Tidak ada negatif');
		end else
		begin
			write(nOfBil);
			write(' ');
			writeln(firstBil);
		end;
	end else if X = 1 then
	begin
		for i := 1 to N do
		begin 
			nOfBil := nOfBil + 1;
			if bil[i] > 0 then
			begin
				firstBil := bil[i];
			end;
		end;
		if nOfBil = 0 then
		begin
			writeln('Tidak ada positif');
		end else
		begin
			write(nOfBil);
			write(' ');
			writeln(firstBil);
		end;
	end else
	begin
		writeln('Tidak diproses');
	end;
end.
