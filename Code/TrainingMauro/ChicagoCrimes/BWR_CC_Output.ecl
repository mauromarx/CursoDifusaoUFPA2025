IMPORT $, DataPatterns;
//
// Aula 01 - Tarefa 01 = Spray
//
//
// Aula 02 - Tarefa 01 = Estrutura de Dados Brutos
// OUTPUT($.ModChicagoCrimes_raw.FileCC);
CHOOSEN($.ModChicagoCrimes_raw.FileCC,4);
//
//
// Aula 03 - Tarefa 01 = Estrutura de Dados Otimizados
CC_raw := $.ModChicagoCrimes_raw.FileCC;    // Alias
//
DataPatterns.Profile(CC_raw);
DataPatterns.BestRecordStructure(CC_raw);
DataPatterns.Benford(CC_raw,'community_area');
//
//
CC_opt := $.ModChicagoCrimes_optimized.FileCC;  // Alias
// OUTPUT($.ModChicagoCrimes_optimized.FileCC);
CHOOSEN($.ModChicagoCrimes_optimized.FileCC,4);
//
//
//
OUTPUT(CC_raw, NAMED('Data_Raw'));
OUTPUT(CC_opt, NAMED('Data_Opt'));
//