      ******************************************************************
      * Author: RAFAEL RENAUD MIRANDA
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. PROG006.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ARQUIVO ASSIGN TO 'PROG006.TXT'
           ORGANIZATION IS LINE SEQUENTIAL.
      *-----------------------
       DATA DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       FILE SECTION.
       FD ARQUIVO.
       01 USUARIO.
           05 NOME PIC X(32) VALUES SPACES.
           05 CPF PIC X(16) VALUES SPACES.
           05 ENDERECO.
               07 RUA PIC X(32) VALUES SPACES.
               07 NUMERO PIC X(4) VALUES SPACES.
               07 BAIRRO PIC X(16) VALUES SPACES.
      *-----------------------
       WORKING-STORAGE SECTION.
       77 FLAG-ARQUIVO PIC 9(1) VALUE 0.
       77 READ-COUNT PIC 9(5) VALUE ZERO.
       77 COUNTER PIC ZZZZ9 VALUE ZERO.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
           PERFORM 001-INPUT.
           PERFORM 002-PROCESS UNTIL FLAG-ARQUIVO EQUAL TO 1.
           PERFORM 003-EXIT.
           STOP RUN.
      ** add other procedures here

       001-INPUT.
           OPEN INPUT ARQUIVO.
           READ ARQUIVO AT END MOVE 1 TO FLAG-ARQUIVO.

       002-PROCESS.
           DISPLAY '#########################################'.
           DISPLAY 'NOME: ' NOME.
           DISPLAY 'CPF: ' CPF.
           DISPLAY 'ENDERECO: ' FUNCTION TRIM(RUA) ','
              FUNCTION TRIM(NUMERO).
           DISPLAY 'BAIRRO: ' BAIRRO.
           READ ARQUIVO AT END MOVE 1 TO FLAG-ARQUIVO.
           ADD 1 TO READ-COUNT.

       003-EXIT.
           CLOSE ARQUIVO.
           DISPLAY '#########################################'.
           MOVE READ-COUNT TO COUNTER.
           DISPLAY COUNTER ' ARQUIVOS LIDOS.'.


       END PROGRAM PROG006.
