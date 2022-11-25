//MATE01A JOB (ACCOUNT),
//            'MAP',
//            MSGCLASS=A,
//            CLASS=A,
//            NOTIFY=&SYSUID
//*===================PARAMETERS======================
// SET CICSCP=MASTER.CICS.COPY
// SET CICSMP=MASTER.CICS.MAPS
// SET MAPSET=MS0001
//*=====================DFH320========================
// SET SDFHPROC='DFH320.CICS.SDFHPROC'
// SET CICSLD=DFH320.CICS.SDFHLOAD 
//*===================================================
//PROCLIB JCLLIB ORDER=(&SDFHPROC)
//CICSMAP   EXEC DFHMAPS,
// DSCTLIB=&CICSCP,
// MAPNAME=&MAPSET,
// MAPLIB=&CICSLD
//COPY.SYSUT1 DD DISP=SHR,DSN=&CICSMP(&MAPSET)
//