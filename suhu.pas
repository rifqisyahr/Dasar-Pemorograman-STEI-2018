Program suhu;

var
	i, min, max : integer;
	h : array[1..20] of integer;
begin
	readln(h[1]);
	max := h[1];
	min := h[1];
	for i := 2 to 20 do
	begin
		readln(h[i]);
		if h[i] >= max then
		begin 
			max := h[i];
		end else if h[i] <= min then
		begin
			min := h[i];
		end;
	end;
	
	for i := 1 to 20 do
	begin
		write('[H');
		write(i);
		write(']');
		writeln(h[i]);
	end;
	write('Tertinggi = ');
	writeln(max);
	write('Terendah = ');
	writeln(min);
end.
