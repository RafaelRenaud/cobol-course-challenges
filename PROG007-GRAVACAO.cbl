      ******************************************************************
      * Author: RAFAEL RENAUD MIRANDA
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. PROG007.
       ENVIRONMENT DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       CONFIGURATION SECTION.
      *-----------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ARQUIVO ASSIGN TO 'PROG007.TXT'
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
       77 CONTINUA PIC X(1) VALUE 'S'.
       77 WRITE-COUNT PIC 9(5) VALUE ZERO.
       77 COUNTER PIC ZZZZ9 VALUE ZERO.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
           PERFORM 001-INPUT.
           PERFORM 002-PROCESS UNTIL CONTINUA NOT EQUAL TO 'S'
               AND CONTINUA NOT EQUAL TO 's'.
           PERFORM 003-EXIT.
           STOP RUN.
      ** add other procedures here

       001-INPUT.
           OPEN OUTPUT ARQUIVO.

       002-PROCESS.
           DISPLAY '#########################################'.
           DISPLAY 'NOME: '.
           ACCEPT NOME.
           DISPLAY 'CPF: '.
           ACCEPT CPF.
           DISPLAY 'RUA: '.
           ACCEPT RUA.
           DISPLAY 'NUMERO: '.
           ACCEPT NUMERO.
           DISPLAY 'BAIRRO: '.
           ACCEPT BAIRRO.
           WRITE USUARIO.
           ADD 1 TO WRITE-COUNT.
           DISPLAY 'CONTINUA? S/N'.
           ACCEPT CONTINUA.

       003-EXIT.
           CLOSE ARQUIVO.
           DISPLAY '#########################################'.
           MOVE WRITE-COUNT TO COUNTER.
           DISPLAY COUNTER ' ARQUIVOS REGISTRADOS.'.


       END PROGRAM PROG007.
