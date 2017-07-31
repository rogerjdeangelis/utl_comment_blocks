%macro blkc /cmd parmbuff;
/*-----------------------------------------*\
|  comment out a datastep or proc           |
\*-----------------------------------------*/
   %let argx=&syspbuff;
   %if %upcase(&syspbuff)=PROC %then %do;
      c 'proc' '/*proc' ic first;
      c 'run;quit;' 'run;quit;*/' ic first;
   %end;
   %else %do;
     c 'data' '/*data' ic first;
     c 'run;quit;' 'run;quit;*/' ic first;
   %end;
%mend blkc;
