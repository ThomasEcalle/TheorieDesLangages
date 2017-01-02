%{
   int Nb_Car, Nb_Word, Nb_Line;
%}
chiffre   [0-9]
lettre    [a-z]|[A-Z]
alphanum  {chiffre}|{lettre}
blanc     " " 
%%
{alphanum}+   {ECHO; Nb_Car += yyleng; Nb_Word++;}
({blanc})+      {ECHO; Nb_Car += yyleng;}
\n              {ECHO; Nb_Line++;}
 
%%
#include <stdio.h>
int main () {
   yyin = fopen("essai.txt", "r") ; 
   Nb_Car=Nb_Word=Nb_Line=0;
   yylex() ;
   printf("\nNb_Car=%d\nNb_Word=%d\nNb_Line=%d\n\n",Nb_Car,Nb_Word,Nb_Line);    
   return 0;
}
int yywrap(void) {
return 1;
}