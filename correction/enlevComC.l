%{
#include <string.h>
%}

%%
"//".*\n {  }
"/*"([^*]|"*"+[^/*])*"*"*"*/" { }
 
 

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
 