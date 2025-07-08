IMPORT $, DataPatterns;
//
// OUTPUT($.ModChicagoCrimes_raw.FileCC);
 CHOOSEN($.ModChicagoCrimes_raw.FileCC,4);
//
// OUTPUT($.ModChicagoCrimes_optimized.FileCC);
 CHOOSEN($.ModChicagoCrimes_optimized.FileCC,4);
//
//
CC_raw := $.ModChicagoCrimes_raw.FileCC;
CC_opt := $.ModChicagoCrimes_optimized.FileCC;
//
// Tarefa 2
OUTPUT(CC_raw, NAMED('Raw_data'));
OUTPUT(CC_opt, NAMED('Opt_data'));
//
// Tarefa 3
DataPatterns.Profile(CC_raw);
DataPatterns.BestRecordStructure(CC_raw);
DataPatterns.Benford(CC_raw,'community_area');
//