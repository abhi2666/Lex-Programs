/* program to check valid identifier in C like --> 123 (invalid), abc (valid), _abc (valid), etc
it should start with alphabet or hyphen */
%{
#include<stdio.h>
%}

%%
([a-zA-Z_])+([0-9])* printf("Valid Identifier");
.* printf("Invalid Identifier");
%%

int yywrap() {
return 1;
}
int main(){
printf("enter string : ");
yylex();

}
