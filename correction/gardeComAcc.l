%{
#include <string.h>
%}

%%
\{[^\}\{]+\} { 
				char res [yyleng-1];
				strncpy(res, yytext+1, yyleng-2);
				res[yyleng-2]='\0';
				printf("%s", res);
				}
.|\n   { }
 

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
 