IMPORT $;			//	Code 03
//
Crimes := $.STD_ChicagoCrimes.File;
//
EXPORT File_Crimes_Slim := MODULE
	EXPORT Layout := RECORD
		RECORDOF(Crimes) AND NOT [Block, Community_Area, District]; // All recs excluding Block, Community_Area and District.
		UNSIGNED4 BCD_ID;
	END;
	EXPORT File := DATASET('~CLASS::MDM::OUT::Crimes_Slim', Layout, FLAT);
	EXPORT IDX_PType_LDesc := INDEX(File,{primary_type,location_description},{File},
                                          '~CLASS::MDM::KEY::PType_LDesc');
END;
//