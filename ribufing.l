%{
#include <stdio.h>
#include "scanner.h"
%}

%%


Kaf         {return IF; }
Kef         {return ELSE; }
KafKef      {return ELSE_IF; }
"="         { return EQUALS; }
";"         { return SEMICOLON; }
[\(]        {return LEFTPAR; }
[\)]        {return RIGHTPAR; }
[{}]        {return CRLBRYCS; }
(not|!)     {return NOT; }
(\+|\-|\*|\/)   {return OPERATOR; }
(TRUE|FALSE|true|false|T|F|t|f)   { return BOOLEAN; }
"exit;"     { return 0;}
[0-9]+      { return NUMBER; } // Sayıları tanımla
[a-zA-Z]+   { return VARIABLE; }
[ \t\n]     ; // Boşluk karakterlerini yoksay
.           ; // Tanımlanmayan karakterleri yoksay

%%

int yywrap() {
    return 1;
}
