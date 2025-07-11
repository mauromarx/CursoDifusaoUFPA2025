// Build the INDEX definitions
IMPORT $;
//
BUILD($.File_Crimes_Slim.IDX_PType_LDesc, OVERWRITE);
BUILD($.File_LookupBCD.IDX_BCD, OVERWRITE);
//
//
COUNT($.File_Crimes_Slim.IDX_PType_LDesc);      //  7.782.460
COUNT($.File_LookupBCD.IDX_BCD);                //     73.506