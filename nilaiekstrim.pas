Program nilaiekstrim;

var
	nilai : array[1..100] of integer;
	N, i, X, nOfX, min, max : integer;
begin
	readln(N);
	readln(nilai[1]);
	min := nilai[1];
	max := nilai[1];
	for i:=2 to N do
	begin
		readln(nilai[i]);
		if nilai[i] >= max then
		begin 
			max := nilai[i];
		end else if nilai[i] <= min then
		begin
			min := nilai[i];
		end;
	end;
	
	nOfX := 0;
	readln(X);
	for i:= 1 to N do
	begin
		if X = nilai[i] then
		begin
			nOfX := nOfX + 1;
			if X = max then
			begin
				max := X;
			end else if X = min then
			begin 
				min := X;
			end;
		end;
	end;
	
	if max = X then
	begin
		writeln('maksimum');
	end;
	if min = X then
	begin
		writeln('minimum');
	end;
	if (max <> X) and (min <> X) and (nOfX <> 0) then
	begin	
		writeln('N#A');
	end;
	if (max <> X) and (min <> X) and (nOfX = 0) then
	begin
		write(X);
		writeln(' tidak ada');
	end;			
end.
	
