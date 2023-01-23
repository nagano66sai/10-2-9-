INPUT   PROMPT "変換したい10進数を入力してください":変換したい数
FOR  n=2  TO  9       ! 2進数から9進数まで
   LET target=変換したい数
   LET s$=""
   DO  WHILE  target<>0
      LET amari=MOD(target,n)    !余りを求めています
      LET s$=s$&STR$(amari)          !余りの数字を連結していきます
      LET target=INT(target/n)    !商を求めています
   LOOP
    
   LET h=LEN(s$)
   LET ss$=""
   FOR   g=h  TO   1  STEP -1    !数字を逆順に並べかえます
      LET ss$=ss$&mid$(s$,g,1)
   NEXT G
   REM   --------------------------------------
    
   PRINT  "10進数の";変換したい数;"は";n;"進数では"; ss$;"です。"      !結果を出力します
NEXT  n  
END
