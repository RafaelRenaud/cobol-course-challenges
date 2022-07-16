      ******************************************************************
      * Author: RAFAEL RENAUD MIRANDA
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. PROG005.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *-----------------------
       INPUT-OUTPUT SECTION.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
      *-----------------------
       WORKING-STORAGE SECTION.
       77 USERNUM PIC 9(2) VALUES ZEROS.
       77 CONTINUA PIC X(1) VALUE 'S'.
       77 ACUMULA PIC 9(3) VALUES ZEROS.
       77 RESULTADO PIC 9(3) VALUES ZEROS.
       77 LINHA PIC 9(2) VALUES ZEROS.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
           PERFORM 000-HEADER 2 TIMES.
           PERFORM QUEBRA.
           PERFORM 002-MAIN UNTIL CONTINUA NOT EQUAL TO 'S'
               AND CONTINUA NOT EQUAL TO 's'.
           STOP RUN.

       000-HEADER.
           DISPLAY 'HORA DA TABUADA!'.

       QUEBRA.
           DISPLAY '##################'.

       001-USER-INPUT.
           DISPLAY 'DIGITE O VALOR DA TABUADA: '
           ACCEPT USERNUM.

       001-CALCULATE.
           MULTIPLY USERNUM BY LINHA GIVING RESULTADO.
           DISPLAY USERNUM ' X ' LINHA ' = ' RESULTADO.

       002-MAIN.
           PERFORM 001-USER-INPUT.
           PERFORM QUEBRA.
           PERFORM 001-CALCULATE VARYING LINHA FROM 0 BY 1
               UNTIL LINHA=11.
           PERFORM QUEBRA.

           DISPLAY 'CONTINUA? S/N'.
           ACCEPT CONTINUA.

      ** add other procedures here
       END PROGRAM PROG005.
