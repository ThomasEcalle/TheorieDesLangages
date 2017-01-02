%{
	int nbOuvrante = 0;
	int nbFermante = 0;
	int erreur = 0;
%}
ouvrante \(
fermante \)

%%
{ouvrante} {nbOuvrante++;}
{fermante} {nbFermante++; if (nbFermante>nbOuvrante){erreur++;}}
		
%%
#include <stdio.h>
int main () {
  yyin = fopen("in.txt", "r") ;
  yylex() ;
  if (!erreur)
  {
	  if (nbFermante == nbOuvrante){
		  printf("Aucune erreur");
		  }
  else {
	  printf("Des parentheses ne sont pas correctement fermees");
  }
	  
	}
  else {printf("ERREUR");}
}
int yywrap(void) {
  return 1;
}