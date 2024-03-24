#include <stdio.h>
#include <stdlib.h>
#include "scanner.h"

int yylex(); // Flex tarafından oluşturulacak olan lexer fonksiyonunu bildiriyoruz.
extern int yylineno;
extern char *yytext; // Flex tarafından oluşturulacak olan yytext dizisini kullanacağımızı belirtiyoruz.

char *names[] = {NULL, "EQUALS_CHECK", "SEMICOLON", "BOOLEAN", "NUMBER", "VARIABLE", "LEFTPAR", "RIGHTPAR", "NOT","OPERATOR","CRYLBRYCS","IF","ELSE","ELSE_IF","NOT_EQUALS_CHECK","ASSIGN_OPT"};

int main() {
    int token = yylex();
    while (token) {
	    printf("%s ",names[token]);	
	    int lineno = yylineno;
	    token = yylex();
	    if(lineno != yylineno){
		    printf("\n");
	    }
    }
    return 0;
}
