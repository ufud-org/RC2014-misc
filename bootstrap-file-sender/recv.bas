10 PRINT "RECV"
20 PRINT
30 PRINT "PROMPT IS ?"
40 PRINT "Ofilename.ext OPEN"
50 PRINT "C             CLOSE"
60 PRINT "Z...          CODE"
70 PRINT "Q             QUIT"
80 PRINT "?             HELP"
90 PRINT
100 INPUT O$
110 C$=LEFT$(O$,1)
120 IF C$="O" THEN GOTO 1000
130 IF C$="C" THEN GOTO 1100
140 IF C$="Z" THEN GOTO 1200
150 IF C$="Q" THEN END
160 IF C$="?" THEN GOTO 20
170 PRINT "!?"
180 GOTO 100
1000 OPEN "O",1,MID$(O$,2)
1010 GOTO 100
1100 CLOSE 1
1110 GOTO 100
1200 P$=MID$(O$,2)
1210 IF LEN(P$)>16 THEN 1250
1220 PRINT "!L"
1230 GOTO 100
1250 S=0:I=1
1260 H=ASC(MID$(P$,I,1))-64
1265 S=S+H
1270 L=ASC(MID$(P$,I+1,1))-64
1275 S=S+L
1280 B=H*16+L
1290 PRINT#1,CHR$(B);
1300 I=I+2
1310 IF I<17 THEN 1260
1320 S=S AND 15
1330 CK=ASC(MID$(P$,I,1))-64
1340 IF CK=S THEN 100
1350 PRINT "!C"
1360 GOTO 100
