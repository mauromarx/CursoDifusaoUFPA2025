IMPORT $;			//	Code 04
//
$.File_Crimes_Slim.Layout Slimdown($.STD_ChicagoCrimes.Layout L, $.File_LookupBCD.Layout R) := TRANSFORM
	SELF.BCD_ID := R.BCD_ID;
	SELF 		:= L;
END;
//
SlimRecs := JOIN($.STD_ChicagoCrimes.File, $.File_LookupBCD.File,
                                    LEFT.District	    = RIGHT.District AND
									LEFT.Community_Area = RIGHT.Community_Area AND
									LEFT.Block	        = RIGHT.Block,
									Slimdown(LEFT,RIGHT),LEFT OUTER, LOOKUP);
//
OUTPUT(SlimRecs,,'~CLASS::MDM::OUT::Crimes_Slim', OVERWRITE);
//