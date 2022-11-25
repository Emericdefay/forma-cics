      ******************************************************************                                                 
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGMMP1.
      ******************************************************************                                                 
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
      ******************************************************************                                                 
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      / Copybook from BMS Assembly
       COPY MS0001.
      / CICS variables
       77  WS-CICS-RET    PIC S9(4) COMP VALUE ZERO.
      / Program values
       01 BMS-VALUES.
           02 MAPSET-NAME PIC X(05) VALUE 'CF00M'.
           02    MAP-NAME PIC X(05) VALUE 'CF00M'.
       01 USER-CREDENTIALS.
           02   USER-NAME PIC X(07) VALUE 'IBMUSER'.
           02   USER-PSWD PIC X(07) VALUE 'IBMUSER'.
       01 TEXT-DISPLAYED.
           02 SUCCES-DISP PIC X(07) VALUE 'SUCCESS'.
           02 FAILED-DISP PIC X(06) VALUE 'FAILED'.
      ******************************************************************                                                 
       PROCEDURE DIVISION.
           PERFORM 5000-CICS-RECEIVE.
           PERFORM 5100-CONDITIONS.
           PERFORM 5010-CICS-SEND.
           PERFORM 5090-CICS-RETURN.
           GOBACK.

       5000-CICS-RECEIVE.
           EXEC CICS RECEIVE
               MAPSET(MAPSET-NAME)
               MAP(MAP-NAME)
               INTO(CF00MI)
               RESP(WS-CICS-RET)
           END-EXEC
           .

       5100-CONDITIONS.
           IF (USERMPI = USER-NAME) AND (PSWMAPI = USER-PSWD) THEN
               MOVE SUCCES-DISP TO MESSMPO
           ELSE
               MOVE FAILED-DISP TO MESSMPO
           END-IF
           .

       5010-CICS-SEND.
           EXEC CICS SEND
                MAPSET(MAPSET-NAME)
                MAP(MAP-NAME)
                DATAONLY
                FROM(CF00MO)
           END-EXEC
           .

       5090-CICS-RETURN.
           EXEC CICS RETURN
           END-EXEC
           .
