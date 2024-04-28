%{
#include<stdlib.h>
#include "y.tab.h"
extern float yylval;
%}


%%
[0-9]+\.?|[0-9]*\.[0-9]+ {yylval = atof(yytext); return NUM;}
"+" {return PLUS;}
"-" {return MINUS;}
"*" {return MUL;}
"/" {return DIV;}
"sin" {return SIN;}
"cos" {return COS;}
"tan" {return TAN;}
\n return 0;
[ \t] ;
. ;
%%

int yywrap()
{
return 1;
}
