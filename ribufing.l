%{
#include <stdio.h>
#include "myscanner.h"
%}

%%

"="         { printf("EQUALS\n"); return EQUALS; }
";"         { printf("SEMICOLON\n"); return SEMICOLON; }
"true"      { printf("BOOLEAN\n"); return BOOLEAN; }
"false"     { printf("BOOLEAN\n"); return BOOLEAN; }
"exit;"     {printf("Exiting...\n"); return 0;}
[0-9]+      { printf("NUMBER\n"); return NUMBER; } // Sayıları tanımla
[a-zA-Z]+   { printf("VARIABLE\n"); return VARIABLE; }
[ \t\n]     ; // Boşluk karakterlerini yoksay
.           ; // Tanımlanmayan karakterleri yoksay

%%

int yywrap() {
    return 1;
}
