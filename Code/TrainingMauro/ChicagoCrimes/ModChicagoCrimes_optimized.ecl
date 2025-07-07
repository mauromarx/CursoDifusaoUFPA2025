EXPORT ModChicagoCrimes_optimized := Module
//
    EXPORT LayoutCC := RECORD
        UNSIGNED    ID;
        STRING      Case_Number;
        STRING      Date;
        STRING      Block;
        STRING      IUCR;
        STRING33    Primary_Type;             //  due to IDX_PType_LDesc
        STRING      Description;
        STRING59    Location_Description;     //  due to IDX_PType_LDesc
        BOOLEAN     Arrest;
        BOOLEAN     Domestic;
        UNSIGNED2   Beat;
        UNSIGNED2   District;
        UNSIGNED2   Ward;
        UNSIGNED2   Community_Area;
        STRING      FBI_Code;
        UNSIGNED6   X_Coordinate;
        UNSIGNED6   Y_Coordinate;
        UNSIGNED2   Year;
        STRING      Updated_On;
        DECIMAL11_9 Latitude;
        DECIMAL11_9 Longitude;
        STRING      Location;
    END;
//
   EXPORT FileCC := DATASET('~CLASS::MDM::Intro::ChicagoCrimes', LayoutCC, CSV(HEADING(1)));
END;
//