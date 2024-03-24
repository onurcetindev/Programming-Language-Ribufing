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
                printf("EQUALS ");
                break;
            case SEMICOLON:
                printf("SEMICOLON ");
                break;
            case BOOLEAN:
                printf("BOOLEAN ");
                break;
            case NUMBER:
                printf("NUMBER ");
                break;
           case CRLBRYCS:
		printf("CURLYBRACES ");
		break; 
	   case VARIABLE:
                printf("VARIABLE ");
                break;
	   case LEFTPAR:
		printf("LEFTPAR ");
		break;
	   case RIGHTPAR:
		printf("RIGHTPAR ");
		break;
           case NOT:
		printf("NOT ");
		break;
	  case  IF:
		printf("IF ");
		break;
	  case ELSE:
		printf("ELSE ");
		break;
	  case ELSE_IF:
		printf("ELSE_IF ");
		break;
	  case OPERATOR:
		printf("OPERATOR ");
		break;		
            default:
                printf("UNKNOWN ");
                break;
        }
    }

    return 0;
}
