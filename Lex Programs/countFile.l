/* count words characters and white spaces from an input file*/
%{
#include <stdio.h>
int wc = 0, cc = 0, sc = 0;
%}

%%
[^\t\n ]+ {wc++; cc += yyleng;}
[\t ] {sc++; cc += yyleng;}
%%

int yywrap(){
return 1;
}
int main()
{
yyin = fopen("input.txt", "r");
yylex();
printf("Words %d characters %d and spaces %d", wc, cc, sc);
}
