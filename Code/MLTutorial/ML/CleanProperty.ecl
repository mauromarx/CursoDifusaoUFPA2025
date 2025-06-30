IMPORT $;
//
Property := $.modProperty.File;
//
// Add or remove a / below to quick change the comment section
//*
EXPORT CleanProperty := Property($.isCleanFilter);/*/
//
CleanProperty := Property($.isCleanFilter);
OUTPUT(CleanProperty);
COUNT(CleanProperty);          // 575.814 registros
OUTPUT(CleanProperty,,'~CLASS::aro::OUT::CleanProperty',CSV(SEPARATOR(','), TERMINATOR('\n')),OVERWRITE);
//*/