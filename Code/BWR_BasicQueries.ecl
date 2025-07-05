IMPORT $;

Persons := $.File_Persons.File;

//Gere uma saída para as tabelas Persons e Accounts, simplesmente usando o nome da definição no seu arquivo ECL
Persons;

//Gere uma contagem de todos os registros nas tabelas Persons.
COUNT(Persons); //841,400

//Gere uma saída para a tabela Persons, limitando o resultado ao ID, Last e First Name
OUTPUT(Persons,{ID,LastName,FirstName}); 

//Gere uma saída para a tabela Pessoas, limitando o resultado ao ID, StreetAddress, City, State e ZipCode, e nomeie a aba de resultado no ECL IDE "Address_Info"
OUTPUT(Persons,{ID,StreetAddress,City,State,ZipCode},NAMED('Address_Info'));
