%{
#include<stdio.h>
int lc = 0, sc = 0, wc = 0, cc = 0;
%}

%%
[\n] {lc++, cc += yyleng;}
[\t ] {sc++, cc += yyleng;}
[^\t\n ]+ {wc++, cc += yyleng;}
%%
int yywrap(){
return 1;
}
int main(){
printf("Enter a string: ");
yylex();
printf("line count is %d space count is %d word count is %d and character count is %d\n", lc, sc, wc, cc);
}
