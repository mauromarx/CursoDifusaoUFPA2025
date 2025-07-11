IMPORT $;

EXPORT NormCrimeRecs := MODULE
  // Normalized RECORD structure  
	EXPORT Layout := RECORD
        UNSIGNED row_id;
	    UNSIGNED4 day;
	 	UNSIGNED4 time;
		STRING11 Case_Number;
		STRING4 IUCR;
  	    STRING33 Primary_Type;
		STRING60 Description;
		UNSIGNED4 block_ID;
  END;
	// Normalized DATASET definition
  EXPORT File := DATASET('~CLASS::XYZ::OUT::Crimes_Slim',Layout,THOR);
END;
