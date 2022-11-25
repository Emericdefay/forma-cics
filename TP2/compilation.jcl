//CCICSCBL JOB (ACCOUNT),'MAP',MSGCLASS=A,CLASS=A,
//             NOTIFY=&SYSUID 
//*=================PARAMETERS-CBL====================
// SET CBLPTH=MASTER.PROG.CBL
// SET CBLPGM=PGMMP1
//*=================PARAMETERS-CICS===================
// SET CICSCP=MASTER.CICS.COPY
// SET CICSMP=MASTER.CICS.MAP
// SET MAPSET=MS0001
//*=====================DFH320========================
// SET SDFHPROC='DFH320.CICS.SDFHPROC'
// SET SDFHINDX='DFH320.CICS'
// SET CICSLD=DFH320.CICS.SDFHLOAD 
//*===================================================               
//PROCLIB JCLLIB ORDER=(&SDFHPROC)                 
//CICSPGM  EXEC DFHZITCL,                                       
// LNGPRFX=IGY410,                                      
// INDEX=&SDFHINDX,                                 
// PROGLIB=&CICSLD,                        
// DSCTLIB=&CICSCP                           
//COBOL.SYSIN DD DISP=SHR,DSN=&CBLPTH(&CBLPGM)          
//LKED.SYSIN  DD *
    NAME CBLPGM(R)                                           
//