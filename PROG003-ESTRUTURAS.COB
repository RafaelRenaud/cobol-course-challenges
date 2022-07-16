      ******************************************************************
      * Author: RAFAEL RENAUD MIRANDA
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. PROG003.
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
       01 WRKCLI.
           05 CLINAME PIC X(8) VALUES SPACES.
           05 CLIBASE PIC 9(4)V99 VALUES ZEROS.
           05 CLISAL PIC 9(4)V99 VALUES ZEROS.
           05 CLIEND.
               07 ENDRUA PIC X(10) VALUES SPACES.
               07 ENDNUM PIC 9(2) VALUES ZEROS.
       77 CLIBAS-ED PIC ZZZ9,99 VALUE ZEROS.
       77 CLISAL-ED PIC ZZZ9,99 VALUE ZEROS.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
      **
      * The main procedure of the program
      **
            DISPLAY 'NOME,BASE,SALARIO,ENDERECO'.
            ACCEPT WRKCLI.

            MOVE CLIBASE TO CLIBAS-ED.
            MOVE CLISAL TO CLISAL-ED.

            DISPLAY CLINAME ' LOCALIZADO EM: ' ENDRUA ',' ENDNUM.
            DISPLAY 'SALARIO BASE: ' CLIBAS-ED.
            DISPLAY 'SALARIO ATUAL: ' CLISAL-ED.

            STOP RUN.
      ** add other procedures here
       END PROGRAM PROG003.
