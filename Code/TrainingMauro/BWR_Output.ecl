IMPORT $, DataPatterns;
//
// OUTPUT($.File_Persons.File);
CHOOSEN($.File_Persons.File,4);
//
// OUTPUT($.File_Accounts.File);
CHOOSEN($.File_Accounts.File,4);
//
//
Persons := $.File_Persons.File;
profileResults := DataPatterns.Profile(Persons);
OUTPUT(profileResults, ALL, NAMED('profileResults'));
//