%{
int chiffreOK=0;
%}
chiffre [0-9]
lettre [a-z]|[A-Z]
commentaire \{[^\}]*
%%
{lettre}+ {;}
{chiffre}+ {;}
{commentaire}/\} {printf("\n%s\n",yytext+1);}
.|\n {;}
%%
#include <stdio.h>
int main () {
  yyin = fopen("in.txt", "r") ;
  yylex() ;
  //printf("\npresence de chiffre : %d\n", chiffreOK );
  return 0;
}
int yywrap(void) {
  return 1;
}