       IDENTIFICATION DIVISION.
       
       PROGRAM-ID. timeout. 
     
       ENVIRONMENT DIVISION.
     
       INPUT-OUTPUT SECTION.
     
       DATA DIVISION.
     
       FILE SECTION.
       
       WORKING-STORAGE SECTION.
           01 CURRENT-DATE        PIC IS  9(6).
           01 CURRENT-TIME        PIC IS  9(8).
           
           01 FORMATTED-DATE.
              5 FORM-YEAR    PIC 9(2).             
              5 FILLER       PIC X VALUE '-'.
              5 FORM-MONTH   PIC 9(2).
              5 FILLER       PIC X VALUE '-'.
              5 FORM-DAY     PIC 9(2).
              
           01 FORMATTED-TIME.
              5 FORM-HOUR    PIC 9(2).             
              5 FILLER       PIC X VALUE ':'.
              5 FORM-MIN     PIC 9(2).
              5 FILLER       PIC X VALUE ':'.
              5 FORM-SEC     PIC 9(2).
           
       PROCEDURE DIVISION.
       
           ACCEPT CURRENT-DATE FROM DATE
           ACCEPT CURRENT-TIME FROM TIME
           
           MOVE CURRENT-DATE(1:2) TO FORM-YEAR.
           MOVE CURRENT-DATE(3:2) TO FORM-MONTH.
           MOVE CURRENT-DATE(5:2) TO FORM-DAY.
           
           MOVE CURRENT-TIME(1:2) TO FORM-HOUR.
           MOVE CURRENT-TIME(3:2) TO FORM-MIN.
           MOVE CURRENT-TIME(5:2) TO FORM-SEC.
           
           DISPLAY "-------------------------------------".
           DISPLAY "NOT FORMMATTED".
           DISPLAY CURRENT-DATE.
           DISPLAY CURRENT-TIME.
           DISPLAY "-------------------------------------".
           DISPLAY " ".
           DISPLAY "-------------------------------------".
           DISPLAY "FORMMATTED".
           DISPLAY FORMATTED-DATE.
           DISPLAY FORMATTED-TIME.
           DISPLAY "-------------------------------------".
           STOP RUN.  