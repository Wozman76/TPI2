program nombre_inverse;



///////CONSTANTES ET TYPES///////
Const MAXTAB = 9;
Const MAXNUM = 999999999;


Type Decomposition = array[1..MAXTAB] of LongWord;

///////PROCEDURES///////
procedure saisir(var n : LongWord);////
begin

	writeln('Entrez un nombre comportant au plus 9 chiffres');
	
	repeat
		readln(n);
		if (n > MAXNUM) then
			writeln('Votre nombre contient plus de 9 chiffres');
	until (n <= MAXNUM);
end;


procedure decomposer( unNombre : LongWord; var laDecompo : Decomposition; var taille : LongWord);////
var reste : LongWord;
begin
	reste := unNombre;
	taille := 0;
	
	while reste <> 0 do
		begin
			taille := taille + 1;
			laDecompo[taille] := reste mod 10;
			reste := reste div 10;
		end;
end;



procedure inverser( taille : LongWord; laDecompo : Decomposition; var decompoInverse : Decomposition);////
var i : Integer;
begin
	for i := 1 to taille do
		decompoInverse[i] := laDecompo[taille + 1 - i];

end;



procedure recomposer( taille : LongWord; decompoInverse : Decomposition; var nombre : LongWord);////
var i : Integer;
	puissance : LongWord;
begin
	nombre := 0;
	puissance := 1;
	for i := 1 to taille do
		begin
			nombre := nombre + decompoInverse[i] * puissance;
			puissance := puissance * 10;
		end;
		
end;



///////PRGM PRINCIPAL///////
var n, nombre : LongWord;
	laDecompo, decompoInverse : Decomposition;
	taille : LongWord;
BEGIN
	saisir(n);
	decomposer(n, laDecompo, taille);
	inverser(taille, laDecompo, decompoInverse);
	recomposer(taille, decompoInverse, nombre);
	writeln('Le nombre obtenu est : ', nombre);
END.
