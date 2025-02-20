%{
#include <stdio.h>
%}

%%

[0-9]  { printf("Input is a digit.\n"); }
.      { printf("Input is not a digit.\n"); }

%%

int yywrap(void) {
    return 1;  // End the scanning
}

int main() {
    yylex();
    return 0;
}