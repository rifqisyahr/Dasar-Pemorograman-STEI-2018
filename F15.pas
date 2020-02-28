program F15;
type
	user=record
		username:string;
		nama:string;
		alamat: string;
	end;
var
	userdata:array [1..100] of user;
	i,N:integer;
	c,anggota,address:string;
	found:boolean;
	
procedure searchUser (userdata: array of user; c:string;var found:boolean; var anggota:string; var address:string);
begin
	found:=false;
	i:=1;
	while (i<=N) and (not(found)) do
	begin
		if(userdata[i].username=c) then
			found:=True
		else 
			i:=i+1;
	end;
	if (found=true) then
		begin
		anggota:=userdata[i].nama;
		address:=userdata[i].alamat;
		end;
end;
begin
	readln(N);
	for i:=1 to N do
	begin
		readln(userdata[i].username);
		readln(userdata[i].nama);
		readln(userdata[i].alamat);
	end;
begin
	write('Masukan username: ');
	readln(c);
	searchUser(userdata,c,found,anggota,address);
	if (found=true) then
		begin
			writeln('Nama Anggota: ', anggota);
			writeln('Alamat Anggota: ', address);
	end else
		begin
			writeln('Anggota tidak ditemukan');
		end;
end;
end.
