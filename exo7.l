%{
	int i;
%}
compilateur "compilateur"
%%
\n  {ECHO; i = 0;}
^(a|A) {ECHO; i = 1;}
^(b|B) {ECHO; i = 2;}
^(c|C) {ECHO; i = 3;}
compilateur {if (i == 1) printf("beurk"); 
            if (i == 2) printf("schtroumpf");
         if (i == 3) printf("youpi!!"); 
        if (i == 0) printf("compilateur");}

%%
#include <stdio.h>
int main () {
  yyin = fopen("in.txt", "r") ;
  yylex() ;
  
}
int yywrap(void) {
  return 1;
}