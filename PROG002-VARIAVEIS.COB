      ******************************************************************
      * Author: RAFAEL RENAUD MIRANDA
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. PROG002.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
      *-----------------------
       WORKING-STORAGE SECTION.
       77 WRK-NAME PIC X(30) VALUE SPACES.
       77 WRK-EMPRESA PIC X(30) VALUE SPACES.
       77 WRK-PRIMSAL PIC 9(8) VALUE ZEROS.
       77 WRK-ULTIMSAL PIC 9(8) VALUE ZEROS.
       77 WRK-RES PIC 9(16) VALUE ZEROS.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
      **
      * The main procedure of the program
      **
            DISPLAY '############'.
            DISPLAY 'FUNCIONARIO'.
            DISPLAY '############'.
            ACCEPT WRK-NAME.
            DISPLAY '############'.
            DISPLAY 'EMPRESA'.
            DISPLAY '############'.
            ACCEPT WRK-EMPRESA.
            DISPLAY '############'.
            DISPLAY 'SALARIO INICIAL'.
            DISPLAY '############'.
            ACCEPT WRK-PRIMSAL.
            DISPLAY '############'.
            DISPLAY 'SALARIO FINAL'.
            DISPLAY '############'.
            ACCEPT WRK-ULTIMSAL.
      *=================================================
               ADD WRK-PRIMSAL WRK-ULTIMSAL TO WRK-RES.
            DISPLAY '############'.
            DISPLAY 'SOMA DOS SALARIOS: R$' WRK-RES.
      *=================================================
               MOVE 0 TO WRK-RES.
               SUBTRACT WRK-PRIMSAL FROM WRK-ULTIMSAL GIVING WRK-RES.
            DISPLAY '############'.
            DISPLAY 'DIFERENCA DOS SALARIOS: R$' WRK-RES.
      *=================================================
               MOVE 0 TO WRK-RES.
               MULTIPLY WRK-PRIMSAL BY WRK-ULTIMSAL GIVING WRK-RES.
            DISPLAY '############'.
            DISPLAY 'PRODUTO DOS SALARIOS: R$' WRK-RES.
      *=================================================
               MOVE 0 TO WRK-RES.
               DIVIDE WRK-PRIMSAL BY WRK-ULTIMSAL GIVING WRK-RES.
            DISPLAY '############'.
            DISPLAY 'RAZAO DOS SALARIOS: R$' WRK-RES.
      *=================================================
               MOVE 0 TO WRK-RES.
               COMPUTE WRK-RES = (WRK-PRIMSAL + WRK-ULTIMSAL) / 2.
            DISPLAY '############'.
            DISPLAY 'MEDIA DOS SALARIOS: R$' WRK-RES.
      *=================================================

            STOP RUN.
       END PROGRAM PROG002.
