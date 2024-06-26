package dev.fmartinez.analizadorlexicojflexfx;

%%
%class Lexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\n,\r]+
%{
    public String lexeme;
%}
%%
programa {lexeme = yytext(); return Tokens.PROGRAMA;}
variables {lexeme = yytext(); return Tokens.VARIABLES;}
entero {lexeme = yytext(); return Tokens.ENTERO;}
funcion {lexeme = yytext(); return Tokens.FUNCION;}
inicio {lexeme = yytext(); return Tokens.INICIO;}
fin {lexeme = yytext(); return Tokens.FIN;}
si {lexeme = yytext(); return Tokens.SI;}
sino {lexeme = yytext(); return Tokens.SINO;}
leer {lexeme = yytext(); return Tokens.LEER;}
escribir {lexeme = yytext(); return Tokens.ESCRIBIR;}
modulo {lexeme = yytext(); return Tokens.MODULO;}
entonces  {lexeme = yytext(); return Tokens.ENTONCES;}
{espacio} {/*Ignore*/}
"//".* { /*Ignore*/ }
"=" {lexeme = yytext(); return Tokens.COMPARAR;}
"+" {lexeme = yytext(); return Tokens.SIMBOLO_ESPECIAL;}
"-" {lexeme = yytext(); return Tokens.SIMBOLO_ESPECIAL;}
"*" {lexeme = yytext(); return Tokens.SIMBOLO_ESPECIAL;}
"/" {lexeme = yytext(); return Tokens.SIMBOLO_ESPECIAL;}
"(" {lexeme = yytext(); return Tokens.PARENTESIS_ABIERTO;}
")" {lexeme = yytext(); return Tokens.PARENTESIS_CERRADO;}
";" {lexeme = yytext(); return Tokens.FIN_LINEA;}
"," {lexeme = yytext(); return Tokens.SEPARACION;}
":" {lexeme = yytext(); return Tokens.ASIGNACION_VARIABLE;}
":=" {lexeme = yytext(); return Tokens.ASIGNACION_VALOR;}
{L}({L}|{D})* {lexeme = yytext(); return Tokens.IDENTIFICADOR;}
("(-"{D}+")") | {D}+ {lexeme = yytext(); return Tokens.NUMERO;}