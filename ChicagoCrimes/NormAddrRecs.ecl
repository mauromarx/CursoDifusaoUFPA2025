EXPORT NormAddrRecs := MODULE
  
  EXPORT Layout := RECORD
    UNSIGNED4 block_ID;
    STRING38 Block;
  END;

  EXPORT File := DATASET('~CLASS::XYZ::Out::LookupBlock', Layout, THOR);
END;
