EXPORT ModChicagoCrimes_raw := Module
//
    EXPORT LayoutCC := RECORD
        STRING  ID;
        STRING  Case_Number;
        STRING  Date;
        STRING  Block;
        STRING  IUCR;
        STRING  Primary_Type;
        STRING  Description;
        STRING  Location_Description;
        STRING  Bool_Arrested;
        STRING  Domestic;
        STRING  Beat;
        STRING  District;
        STRING  Ward;
        STRING  Community_Area;
        STRING  FBI_Code;
        STRING  X_Coordinate;
        STRING  Y_Coordinate;
        STRING  Year;
        STRING  Updated_On;
        STRING  Latitude;
        STRING  Longitude;
        STRING  Location;
    END;
//
   EXPORT FileCC := DATASET('~CLASS::MDM::Intro::ChicagoCrimes', LayoutCC, CSV(HEADING(1)));
END;
//