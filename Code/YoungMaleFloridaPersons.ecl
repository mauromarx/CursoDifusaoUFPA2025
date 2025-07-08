IMPORT $;
Persons := $.File_Persons.File;

//Crie uma definição RecordSet para o conjunto de pessoas do sexo masculino que vivem na Flórida e que nasceram
//após 1979.
//Use o atributo booleano IsYoungMaleFloridian que você criou no Exercício 8A.
EXPORT YoungMaleFloridaPersons := Persons($.IsYoungMaleFloridian);