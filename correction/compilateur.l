%{
int i;
%}

%%
\n  {ECHO; i = 0;}
^a {ECHO; i = 1;}
^B {ECHO; i = 2;}
^c {ECHO; i = 3;}
compilateur {if (i == 1) printf("beurk"); 
            if (i == 2) printf("schtroumpf");
         if (i == 3) printf("youpi!!"); 
        if (i == 0) printf("compilateur");}
.    {ECHO;}

%%
#include <stdio.h>
int main () {
   yyin = fopen("essai.txt", "r") ;
    
    i=0;
   yylex() ;
      
   return 0;
}
int yywrap(void) {
return 1;
}
 