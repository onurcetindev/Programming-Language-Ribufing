#include <stdio.h>
#include <stdlib.h>
#include "scanner.h"

int yylex(); // Flex tarafından oluşturulacak olan lexer fonksiyonunu bildiriyoruz.

extern char *yytext; // Flex tarafından oluşturulacak olan yytext dizisini kullanacağımızı belirtiyoruz.

int main() {
    int token;

    while ((token = yylex())) {
        switch(token) {
            case EQUALS:
                printf("Token: EQUALS\n");
                break;
            case SEMICOLON:
                printf("Token: SEMICOLON\n");
                break;
            case BOOLEAN:
                printf("Token: BOOLEAN\n");
                break;
            case NUMBER:
                printf("Token: NUMBER\n");
                break;
            case VARIABLE:
                printf("Token: VARIABLE\n");
                break;
            default:
                printf("Token: UNKNOWN\n");
                break;
        }
    }

    return 0;
}
