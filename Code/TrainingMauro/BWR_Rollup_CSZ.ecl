IMPORT $;			//	Code 01
//
Persons := $.STD_Persons.File;
//
Layout_Tab_recs := RECORD
	UNSIGNED4 CSZ_ID := Persons.RecID;
	Persons.City;
	Persons.State;
	Persons.Zipcode;
END;
//
Tab_recs := TABLE(Persons, Layout_Tab_recs);
Tab_recs;
Sort_recs := SORT(Tab_recs, ZipCode, City, State);
//
Layout_Tab_recs RollCSV(Layout_Tab_recs L, Layout_Tab_recs R) := TRANSFORM
	SELF.CSZ_ID := IF(L.CSZ_ID < R.CSZ_ID, L.CSZ_ID, R.CSZ_ID);
	SELF        := L;
END;
//
Rollup_CSZ := ROLLUP(Sort_Recs, LEFT.Zipcode = RIGHT.Zipcode AND
								LEFT.State   = RIGHT.State AND
								LEFT.City    = RIGHT.City,
						RollCSV(LEFT,RIGHT));
//
Rollup_CSZsort := SORT (Rollup_CSZ, CSZ_ID);
//
OUTPUT(Rollup_CSZsort,,'~CLASS::MDM::OUT::LookupCSZ', OVERWRITE);
count(Rollup_CSZsort);
//