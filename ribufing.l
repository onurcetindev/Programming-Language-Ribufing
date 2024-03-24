%{
#include <stdio.h>
#include "scanner.h"
%}


string (\"[^\"]*\")
character (\'[^\']\')
integer ([-+]?[0-9]+)
double ([-+]?[0-9]*(\.)?[0-9]+)
boolean (true|false)
TYPE_INTEGER int
TYPE_DOUBLE double
TYPE_STRING string
TYPE_BOOLEAN boolean
func func
switch inspect
case match
if kaf
else kef
else_if kafkef
comment  \(\*(.|\n)*?\*\)
var [a-zA-Z_$][a-zA-Z0-9_'$]*


%%
\+                      {return ADD; } 
\-                      {return SUB; } 
\*                      {return MUL; } 
\/                      {return DIV; } 
{integer}               {return INTEGER; }  
{double}                 {return DOUBLE; }  
{string}                  {return STRING; }  
{character}             {return CHARACTER; }  
{boolean}               {return BOOLEAN; }  
{TYPE_INTEGER}              {return TYPE_INTEGER; }  
{TYPE_DOUBLE}           {return TYPE_DOUBLE; }   
{TYPE_STRING}           {return TYPE_STRING; } 
{TYPE_BOOLEAN}          {return TYPE_BOOLEAN; }    
{func}                  {return FUNCTION; }    
or                      {return OR; }  
and                     {return AND; }  
\=                      {return ASSIGN_OPT; }
\!                     {return NOT; }  
nql                    {return NOT_EQUALS_CHECK; }  
eql                    {return EQUALS_CHECK; }       
{if}                   {return IF; }            
{else}                 {return ELSE; }          
{else_if}               {return ELSE_IF; }  
while                   {return WHILE; }  
{switch}                {return SWITCH; }  
{case}                  {return CASE; }  
{comment}               {return COMMENT; }  
display                   {return PRINT; }  
\{                      {return CRLBRYCS; }  
\}                      {return CRLBRYCS; }  
\(                      {return LEFTPAR; }  
\)                      {return RIGHTPAR; }  
\;                      {return SEMICOLON; }  
{var}                   {return IDENTIFIER; }  
[ \t]                   

%%

int yywrap() {
    return 1;
}


