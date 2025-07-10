IMPORT $;			//	Code 02
//
EXPORT File_LookupBCD := MODULE
	EXPORT Layout := RECORD
		UNSIGNED4 	BCD_ID;
        STRING      Block;
        UNSIGNED2   Community_Area;
        UNSIGNED2   District;
	END;
	SHARED Filename := '~CLASS::MDM::OUT::LookupBCD';
	EXPORT File 	:= DATASET(Filename, Layout, FLAT);
	EXPORT IDX_BCD 	:= INDEX(File,{BCD_ID},{File},'~CLASS::MDM::KEY::Lookup_BCD');
END;
//