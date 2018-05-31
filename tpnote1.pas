program triangle;



var i, j, nb : Integer;

BEGIN
	writeln('Quelle taille de base ?');
	readln(nb);
	writeln;
	for i := 1 to nb do
		begin
		for j := 1 to i do
			write('X');
		writeln;
		end;



END.
