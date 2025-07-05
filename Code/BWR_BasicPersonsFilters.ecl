//Importe todas as definições do seu Módulo de treinamento
IMPORT $,STD;
Persons := $.File_Persons.File;

//Filtre e conte todas as pessoas que moram no estado da Flórida. Sua contagem esperada é 40854
COUNT(Persons(State = 'FL'));

//Filtre e conte todas as pessoas que vivem no estado da Flórida e na cidade de Miami. Sua contagem esperada é agora 2438.
//Persons(State = 'FL',City = 'MIAMI');
//Persons(State = 'FL' AND City = 'MIAMI');
COUNT(Persons(State = 'FL',City = 'MIAMI'));

//Filtre e conte todas as pessoas que moram no estado da Flórida, na cidade de Miami, e tenham um código postal 33102.
//Sua contagem esperada é agora 40.
Persons(State = 'FL',City = 'MIAMI',ZipCode='33102');
COUNT(Persons(State = 'FL',City = 'MIAMI',ZipCode='33102')); //40

//Filtre e conte todas as pessoas cujo nome começa com a letra 'B'. Use várias condições de filtro nesta consulta. Sua
//contagem esperada é 31193.
Persons(FirstName >= 'B', FirstName < 'C');
COUNT(Persons(FirstName >= 'B', FirstName < 'C'));//31193

//Filtre e conte todas as pessoas cujo ano de data do arquivo é posterior a 2000. Sua contagem esperada é 687.
Persons(FileDate[..4] > '2000');
COUNT(Persons(FileDate[..4] > '2000'));//687