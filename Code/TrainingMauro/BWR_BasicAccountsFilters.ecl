IMPORT $;
//
Accounts := $.File_Accounts.File;
//
Accounts(Balance > 100000);
COUNT(Accounts(Balance >= 100000));     // 255131
//
Accounts(Balance >= 100000, Late30Day > 0 OR Late60Day > 0 OR Late90Day > 0);
COUNT(Accounts(Balance >= 100000, (Late30Day > 0 OR Late60Day > 0 OR Late90Day > 0)));     // 20684
//
Accounts(OpenDate[..4] > '1999');
COUNT(Accounts(OpenDate[..4] > '1999'));     // 756676
//
Accounts(TermType = '');
COUNT(Accounts(TermType = ''));     // 4288443
//