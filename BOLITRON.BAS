10 ' BOLITRON
20 COLOR 3,6,6:CLS
30 SCREEN 5,1
40 FOR NS=0 TO 1
50 SP$="":SC$=""
60 FOR SI=0 TO 7
70 READ SQ$,SC:SP=0
80 FOR SJ=1 TO 8
90 SP=SP*2-(MID$(SQ$,SJ,1)="O")
100 NEXT SJ
110 SP$=SP$+CHR$(SP):SC$=SC$+CHR$(SC)
120 NEXT SI
130 SPRITE$(NS)=SP$
140 COLOR SPRITE$(NS)=SC$
150 NEXT NS
160 '
170 DATA ........,3
180 DATA OOOOOOOO,3
190 DATA OOOOOOOO,3
200 DATA OO....OO,3
210 DATA OO....OO,3
220 DATA OOOOOOOO,11
230 DATA OOOOOOOO,11
240 DATA OOO..OOO,3
250 DATA ...OO...,9
260 DATA ..OOOO..,9
270 DATA .OOOOOO.,9
280 DATA OOO..OOO,9
290 DATA OOO..OOO,9
300 DATA .OOOOOO.,9
310 DATA ..OOOO..,9
320 DATA ...OO...,9
330 '
335 COLOR 3,1,1:CLS
340 X=120:XB=120:YB=0:XI=1:YI=1:P=1
350 ON SPRITE GOSUB 1000
360 SPRITE ON
370 A=STICK(0)
380 X=X+2*(A=7)-2*(A=3)
390 IF X<0 THEN X=0
400 IF X>239 THEN X=239
410 PUT SPRITE 0,(X,196),,0
411 XB=XB+XI:IF XB>239 OR XB<0 THEN XI=-1*XI:XB=XB+2*XI
412 YB=YB+YI:IF YB<0 THEN YI=-1*YI:YB=YB+2*YI
415 PUT SPRITE 1,(XB,YB),,1
416 IF YB>188 THEN 2000
420 GOTO 370
1000 '
1001 YI=-1*P:YB=YB+YI:P=P+.3:IF P>4 THEN P=1
1002 PUT SPRITE 1,(XB,YB),,1
1003 P=P+1
1004 XI=1+(RND(0)*4)*SGN(XI)
1010 RETURN
2000 '
2010 END
