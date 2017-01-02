%{
	int numero = 0;
%}
lignes .+\n

%%
{lignes} {numero++; printf("%d) %s",numero,yytext);}
		
%%
#include <stdio.h>
int main () {
  yyin = fopen("in.txt", "r") ;
  yylex() ;
  printf("\n nb lignes : %d", numero);
}
int yywrap(void) {
  return 1;
}