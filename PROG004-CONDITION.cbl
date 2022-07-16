      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       PROGRAM-ID. PROG004.
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
       01 STUDYBOOK.
           05 N1 PIC 9(2)V9 VALUES ZEROS.
           05 N2 PIC 9(2)V9 VALUES ZEROS.
       77 MEDIA PIC 9(2)V9 VALUES ZEROS.
       77 MEDIA-ED PIC Z9,9 VALUES ZEROS.
       77 ALUNO-STATUS PIC X(30) VALUES SPACES.
       77 NOTA-CONSELHO PIC 9(2)V9 VALUES ZEROS.
      *-----------------------
       PROCEDURE DIVISION.
      *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
       MAIN-PROCEDURE.
      **
      * The main procedure of the program
      **
            DISPLAY 'N1,N2'.
            ACCEPT STUDYBOOK.
            COMPUTE MEDIA = (N1+N2) / 2.
            DISPLAY 'NOTAS=' N1 ',' N2.

            MOVE MEDIA TO MEDIA-ED.
            DISPLAY 'MEDIA= ' MEDIA-ED.

            IF MEDIA LESS THAN 7,0
                IF N1 GREATER THAN 2,4 AND N2 GREATER THAN 2,4
                    MOVE 'CONSELHO' TO ALUNO-STATUS
                ELSE
                    MOVE 'REPROVADO' TO ALUNO-STATUS
            ELSE
                MOVE 'APROVADO' TO ALUNO-STATUS.

            DISPLAY 'STATUS DO ALUNO: ' ALUNO-STATUS.

            IF ALUNO-STATUS EQUAL 'CONSELHO'
                DISPLAY 'NOTA DO CONSELHO: '
                ACCEPT NOTA-CONSELHO
                MOVE NOTA-CONSELHO TO MEDIA-ED
                EVALUATE TRUE
                    WHEN NOTA-CONSELHO GREATER THAN 6
                        MOVE 'APROVADO' TO ALUNO-STATUS
                    WHEN OTHER
                        MOVE 'REPROVADO' TO ALUNO-STATUS
                END-EVALUATE
                DISPLAY 'STATUS FINAL DO ALUNO: ' ALUNO-STATUS
                DISPLAY 'NOTA DO CONSELHO: ' MEDIA-ED
            END-IF.

            STOP RUN.

      ** add other procedures here
       END PROGRAM PROG004.
