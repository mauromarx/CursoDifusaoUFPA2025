IMPORT $;			//	Code 01
//
Crimes := $.STD_ChicagoCrimes.File;
//
Layout_Tab_recs := RECORD
	UNSIGNED4 BCD_ID := Crimes.RowID;
	Crimes.Block;
    Crimes.Community_Area;
	Crimes.District;
END;
//
Tab_recs := TABLE(Crimes,Layout_Tab_recs);
Tab_recs;
Sort_recs := SORT(Tab_recs, District, Community_Area, Block);
//
Layout_Tab_recs RollBCD(Layout_Tab_recs L, Layout_Tab_recs R) := TRANSFORM
	SELF.BCD_ID := IF(L.BCD_ID < R.BCD_ID, L.BCD_ID, R.BCD_ID);
	SELF        := L;
END;
//
Rollup_BCD := ROLLUP(Sort_Recs, LEFT.District   	= RIGHT.District AND
                                LEFT.Community_Area = RIGHT.Community_Area AND
								LEFT.Block    		= RIGHT.Block,
						RollBCD(LEFT,RIGHT));
//
Rollup_BCDsort := SORT (Rollup_BCD, BCD_ID);
//
OUTPUT(Rollup_BCDsort,,'~CLASS::MDM::OUT::LookupBCD', OVERWRITE);
//