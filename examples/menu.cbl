       program-id. LeMenu as "Menu.Main".
       author. Olivier DOSSMANN.

       data division.
       working-storage section.

      * Structure pour accueillir la date syst�me
       01 DATE-SYSTEME.
           10 ANNEE PIC 99.
           10 MOIS PIC 99.
           10 JOUR PIC 99.

       77 OPTION PIC 9 VALUE 9.
       77 FIN-MENU PIC 9.
       77 LIGNE PIC X(79) VALUE ALL "-".

       77 COULEURFOND PIC 99 VALUE 1.
       77 COULEURTEXTE PIC 99 VALUE 14.

       screen section.
      *****************
      * Menu Principal
      *****************
       01 MenuPrincipal
           Background-color COULEURFOND Foreground-color COULEURTEXTE.
           10 line  1 Col 1  BLANK SCREEN.
           10 line  3 Col 31 VALUE "Gestion de la banque".
           10 line  5 Col 2  VALUE "Date systeme :".
           10 line  5 Col 18 FROM JOUR OF DATE-SYSTEME.
           10 line  5 Col 20 VALUE "/".
           10 line  5 Col 21 FROM MOIS OF DATE-SYSTEME.
           10 line  5 Col 23 VALUE "/".
           10 line  5 Col 24 FROM ANNEE OF DATE-SYSTEME.
           10 line  5 Col 70 VALUE "Option :".
           10 line  5 col 79 PIC 9 FROM Option.
           10 line  8 Col 4 VALUE "- 1 - Importation des comptes .......
      -    ".............................. : ".
           10 line  9 Col 4 VALUE "- 2 - Liste des banques .............
      -    ".............................. : ".
           10 line 10 Col 4 VALUE "- 3 - Liste des comptes .............
      -    ".............................. : ".
           10 line 11 Col 4 VALUE "- 4 - Controle des cles RIB .........
      -    ".............................. : ".
           10 line 12 Col 4 VALUE "- 5 - Gestion des clients ...........
      -    ".............................. : ".
           10 line 14 Col 4 VALUE "- 0 - Retour au menu appelant .......
      -    ".............................. : ".
       procedure division.
      ******************
      * Affiche un MENU
      ******************

       DEBUT.
           PERFORM MENU-INIT.
           PERFORM MENU-TRAITEMENT UNTIL OPTION = 0.
           PERFORM MENU-FIN.

       MENU-INIT.
           MOVE 6 TO OPTION.
           ACCEPT DATE-SYSTEME FROM date.

       MENU-TRAITEMENT.
           MOVE 0 TO OPTION.
           DISPLAY MenuPrincipal.
      * Recuperation de l'option de l'utilisateur directement au bon endroit
           ACCEPT OPTION line 5 Col 79.
           EVALUATE OPTION
               WHEN 1 CONTINUE
               WHEN 2 continue
               WHEN 3 continue
               WHEN 4 continue
               WHEN 5 CONTINUE
           END-EVALUATE.

       MENU-FIN.
           STOP run.
           
       end program LeMenu.
