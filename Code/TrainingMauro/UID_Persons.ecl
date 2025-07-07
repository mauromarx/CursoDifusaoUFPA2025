IMPORT $;
//
Persons := $.File_Persons.File;
//
Layout_People_RecID := RECORD
    UNSIGNED4 RecID;
    $.File_Persons.Layout;
END;
//
Layout_People_RecID IDRecs($.File_Persons.Layout L, INTEGER cnt) := TRANSFORM
    SELF.RecID := cnt;
    SELF := L;
END;
//
EXPORT UID_Persons := PROJECT(Persons, IDRecs(LEFT,COUNTER))
                        : PERSIST('~CLASS::MDM::PERSIST::UID_Persons');
//