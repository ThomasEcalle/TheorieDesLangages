%{
int nbCarac = 0;
int nbLetter = 0;
int nbLignes = 0;
int nbWords = 0;
%}
carac [\.!\-\(\)"'\{\}]
lignes \n
letter [a-zA-Z]
mot [a-zA-Z]+
number [0-9]
space [ ]
%%
{mot} {nbWords++; nbCarac += yyleng;}
{lignes} {nbCarac++; nbLignes++;}
{carac} {nbCarac++;}
{number} {nbCarac++;}
{space} {nbCarac++;}
		
%%
#include <stdio.h>
int main () {
  yyin = fopen("in.txt", "r") ;
  yylex() ;
  printf("\n nb caracteres : %d\n  \n nb lignes = %d\n    \n nb mots = %d \n", nbCarac, nbLignes,nbWords);
}
int yywrap(void) {
  return 1;
}