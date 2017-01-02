%{
	// mettre en majuscule une lettre précédée par  un point (accompagné d'espaces ou non )
%}
mot \.(" ")*[a-z] 

%%
{mot} {yytext[yyleng-1] -= 32;  printf("%s",yytext);}
		
%%
#include <stdio.h>
int main () {
  yyin = fopen("in.txt", "r") ;
  yylex() ;
  //printf("\n nb lignes : %d", numero);
}
int yywrap(void) {
  return 1;
}