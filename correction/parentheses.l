%{
int nbParOuv=0; int ok=1;
%}
 
%%
"("     {nbParOuv++; ECHO;}
\)      {
        if (nbParOuv>0)
            {
            nbParOuv--;
            ECHO;
            }
        else ok=0;
            
        }
%%
int main () {
   yyin = fopen("essai.txt", "r") ;
    
   
   yylex() ;
     if( ok==0)&&(nbParOuv==0) printf ("Votre parenthesage est incorrect\n");
	 else printf ("Votre parenthesage est correct\n");
   return 0;
}
int yywrap(void) {
return 1;
}
 