IMPORT $;			//	Code 03
//
Persons := $.STD_Persons.File;
//
EXPORT File_Persons_Slim := MODULE
	EXPORT Layout := RECORD
		RECORDOF(Persons) AND NOT [City,State,ZipCode]; // All records excluding City,State and ZipCode.
		UNSIGNED4 CSZ_ID;
	END;
	EXPORT File := DATASET('~CLASS::MDM::OUT::Persons_Slim', Layout, FLAT);
	EXPORT IDX_LName_Fname := INDEX(File,{LastName,FirstName},{File},'~CLASS::MDM::KEY::Lname_Fname');
END;
//