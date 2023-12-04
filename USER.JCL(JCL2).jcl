//JCL2    JOB ,MSGLEVEL=(2,0)
//EXP EXPORT SYMLIST=*
//BEFORE   EXEC PGM=IKJEFT01,PARM='%PREJCL2'
//SYSPROC  DD DSN=TTT.PUBLIC.EXEC,DISP=SHR
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD DUMMY
//***************************************************/
//COBRUN  EXEC IGYWCL
//COBOL.SYSIN  DD DSN=TTT.SOURCE(CBL0001),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(CBL0001),DISP=SHR
//***************************************************/
// IF RC = 0 THEN
//***************************************************/
//RUN     EXEC PGM=CBL0001
//STEPLIB   DD DSN=&SYSUID..LOAD,DISP=SHR
//FNAMES    DD DSN=TTT.INPUT(FNAMES),DISP=SHR
//LNAMES    DD DSN=TTT.INPUT(LNAMES),DISP=SHR
//COMBINED   DD DSN=&SYSUID..OUTPUT(COMBINED),DISP=SHR
//SYSOUT    DD SYSOUT=*,OUTLIM=15000
//CEEDUMP   DD DUMMY
//SYSUDUMP  DD DUMMY
//***************************************************/
// ELSE
// ENDIF
//AFTER    EXEC PGM=IKJEFT1A
//SYSTSPRT DD SYSOUT=*
//SYSTSIN  DD *,SYMBOLS=EXECSYS
LISTDS '&SYSUID..OUTPUT(COMBINED)'
