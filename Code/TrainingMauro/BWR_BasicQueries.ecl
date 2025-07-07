IMPORT $;
//
Persons     := $.File_Persons.File;
Accounts    := $.File_Accounts.File;
Persons;    //  $.File_Persons.File;    //  OUTPUT($.File_Persons.File);
Accounts;   //  $.File_Accounts.File;   //  OUTPUT($.File_Accounts.File);
//
COUNT(Persons);
COUNT(Accounts);
//
OUTPUT(Persons,{ID,LastName,FirstName});
//
OUTPUT(Accounts,{ReportDate,HighCredit,Balance});
//
OUTPUT(Persons,{ID,StreetAddress,City,State,ZipCode}, NAMED('Address_Info'));
//
OUTPUT(Accounts,{AccountNumber,LastActivityDate,Balance}, NAMED('Acct_Activity'));
//