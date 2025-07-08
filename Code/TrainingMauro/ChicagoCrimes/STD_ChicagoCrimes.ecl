IMPORT $, Std;
//
EXPORT STD_ChicagoCrimes := MODULE
    EXPORT Layout := RECORD
        $.UID_ChicagoCrimes.RowID;
        $.UID_ChicagoCrimes.ID;
        $.UID_ChicagoCrimes.Case_Number;
        $.UID_ChicagoCrimes.Day;
        $.UID_ChicagoCrimes.Time;
        $.UID_ChicagoCrimes.Block;
        $.UID_ChicagoCrimes.IUCR;
        $.UID_ChicagoCrimes.Primary_Type;
        $.UID_ChicagoCrimes.Description;
        $.UID_ChicagoCrimes.Location_Description;
        $.UID_ChicagoCrimes.Arrest;
        $.UID_ChicagoCrimes.Domestic;
        $.UID_ChicagoCrimes.Beat;
        $.UID_ChicagoCrimes.District;
        $.UID_ChicagoCrimes.Ward;
        $.UID_ChicagoCrimes.Community_Area;
        $.UID_ChicagoCrimes.FBI_Code;
        $.UID_ChicagoCrimes.X_Coordinate;
        $.UID_ChicagoCrimes.Y_Coordinate;
        $.UID_ChicagoCrimes.Year;
        $.UID_ChicagoCrimes.Updated_On;
        $.UID_ChicagoCrimes.Latitude;
        $.UID_ChicagoCrimes.Longitude;
        $.UID_ChicagoCrimes.Location;
    END;
//
    EXPORT File := TABLE($.UID_ChicagoCrimes, Layout)
                     : PERSIST('~CLASS::MDM::PERSIST::STD_ChicagoCrimes');
END;
//