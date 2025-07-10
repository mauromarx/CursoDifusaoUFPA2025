IMPORT $;
//
EXPORT FN_FetchCrimes (STRING33 PType, STRING59 LDesc) := FUNCTION
//
	basekey1 := $.File_Crimes_Slim.IDX_PType_LDesc;
	basekey2 := $.File_LookupBCD.IDX_BCD;
//	
	FilteredKey := IF(PType='',
					  basekey1(Primary_Type=PType), 
					  basekey1(Primary_Type=PType AND Location_Description=LDesc)
					 );
//	
	Outrec := RECORD
		RECORDOF(basekey1) AND NOT [BCD_ID];
		RECORDOF(basekey2) AND NOT [BCD_ID];
	END;
//	
	Outrec MyJoin(basekey2 Le, FilteredKey Ri):= TRANSFORM
		SELF:=Le;
		SELF:=Ri;
	END;
//	
	JoinRecs:= JOIN(basekey2, FilteredKey, LEFT.BCD_ID=RIGHT.BCD_ID, 
									    MyJoin(LEFT, RIGHT),
									    ALL);
//
	RETURN OUTPUT(JoinRecs);
END;
//