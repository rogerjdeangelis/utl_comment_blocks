# utl_comment_blocks
Comment out a datastep or proc

    ```  Comment out a datastep or proc   ```
    ```    ```
    ```    Comment out a datastep or proc  ```
    ```    ```
    ```  see  ```
    ```  https://goo.gl/f21MdE  ```
    ```  https://communities.sas.com/t5/SASware-Ballot-Ideas/Shortcut-to-move-cursor-to-beginning-end-of-selection-in-SAS-EG/idi-p/384341  ```
    ```    ```
    ```  WORKING CODE  ```
    ```  ============  ```
    ```    ```
    ```     TWO SOLUTIONS ( requires the classic editor with clean single command line)  ```
    ```    ```
    ```         Put this on a function key  ```
    ```    ```
    ```           F1 c 'data' '/*data' ic first;c 'run;quit;' 'quit;*/' ic first;  ```
    ```    ```
    ```         Or a macro (does both data and proc) put in autocall library  ```
    ```    ```
    ```           %macro blkc /cmd parmbuff;  ```
    ```             %if %upcase(&syspbuff)=PROC %then  ```
    ```                 c 'proc' '/*proc' ic first;  ```
    ```                 c 'run;quit;' 'run;quit;*/' ic first;  ```
    ```             %else  ```
    ```                 c 'data' '/*data' ic first;  ```
    ```                 c 'run;quit;' 'run;quit;*/' ic first;  ```
    ```    ```
    ```      Example invocation  ```
    ```    ```
    ```           1. Highlight dataset code and eith hit F1 or type 'blkc on  ```
    ```              classic clean command line  ```
    ```    ```
    ```           2. Highlight proc code and type 'blkc proc' on the  ```
    ```              command line  ```
    ```    ```
    ```  for other editor tools see  ```
    ```  https://www.dropbox.com/s/pwx0r8dqko1ocoj/utl_perpac.sas?dl=0  ```
    ```    ```
    ```  HAVE  ```
    ```  =====  ```
    ```         data want;  ```
    ```           set table1;  ```
    ```           output;  ```
    ```           set table2;  ```
    ```           output;  ```
    ```         run;quit;  ```
    ```    ```
    ```    ```
    ```         proc print;  ```
    ```         run;quit;  ```
    ```    ```
    ```  WANT  ```
    ```  ====  ```
    ```         /*data want;  ```
    ```           set table1;  ```
    ```           output;  ```
    ```           set table2;  ```
    ```           output;  ```
    ```         run;quit;*/  ```
    ```    ```
    ```    ```
    ```         /*proc print;  ```
    ```         run;quit;*/  ```
