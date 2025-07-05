IMPORT $;
Persons := $.File_Persons.File;

//Crie uma definição booleana local chamada IsFloridian que testará se uma pessoa mora na Flórida
IsFloridian := Persons.State = 'FL';

//Crie uma definição booleana local chamada IsMale que testará se o sexo de uma pessoa está marcado como masculino
IsMale := Persons.Gender = 'M';

//Crie uma definição booleana local chamada IsBorn80 que testará se uma pessoa nasceu após o ano de 1979
IsBorn80 := Persons.Birthdate <> '' AND Persons.Birthdate[..4] >= '1980' ;

//Crie a definição booleana IsYoungMaleFloridian para resultar em TRUE para qualquer homem que viva na Flórida 
// e tenha nascido após o ano de 1979
EXPORT IsYoungMaleFloridian := 	IsFloridian AND
                                IsMale AND
                                IsBorn80;