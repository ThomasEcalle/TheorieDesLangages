%{
   int Nb_Line=1;
%}
blanc     " "|\t
%%
^({blanc})* {}
\n   {}
^(.*)  {printf("[%d] %s\n",Nb_Line, yytext); Nb_Line++;}

%%
#include <stdio.h>
int main () {
   yyin = fopen("essai.txt", "r") ;
    
    
   yylex() ;
      
   return 0;
}
int yywrap(void) {
return 1;
}