%{
#include<stdio.h>
%}
/*Rules for checking integer or float number*/
%%
([0-9])+[.]([0-9])+ printf("Floating Number");
([0-9])+ printf("Integer Number");
%%

int yywrap(){ 
return 1; 
}

int main()
{
printf("Enter string: ");
yylex();
}
