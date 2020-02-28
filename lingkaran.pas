Program lingkaran;

const
	pi : real = 3.1415;
var 
	r : integer;
	luas : real;
begin
	readln(r);
	if r > 0 then
	begin
		luas := pi*r*r;
		writeln(luas:0:2);
	end else
	begin
		writeln('Jari-jari harus > 0');
	end;
		
end.
	
