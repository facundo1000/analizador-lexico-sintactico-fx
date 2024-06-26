package dev.fmartinez.analizadorlexicojflexfx;
import java_cup.runtime.Symbol;import java_cup.sym;

%%
%class LexerCup
%type java_cup.runtime.Symbol
%cup
%full
%line
%char
L=[a-zA-Z_]+
D=[0-9]+
espacio=[ ,\t,\n,\r]+
%{
    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);

    }
    private Symbol symbol(int type) {
            return new Symbol(type, yyline, yycolumn);

  }
%}
%%
programa {return new Symbol(sym.PROGRAMA,yychar,yyline,yytext());}
variables {return new Symbol(sym.VARIABLES,yychar,yyline,yytext());}
entero {return new Symbol(sym.ENTERO,yychar,yyline,yytext());}
funcion {return new Symbol(sym.FUNCION,yychar,yyline,yytext());}
inicio {return new Symbol(sym.INICIO,yychar,yyline,yytext());}
fin {return new Symbol(sym.FIN,yychar,yyline,yytext());}
si {return new Symbol(sym.SI,yychar,yyline,yytext());}
sino {return new Symbol(sym.SINO,yychar,yyline,yytext());}
leer {return new Symbol(sym.LEER,yychar,yyline,yytext());}
escribir {return new Symbol(sym.ESCRIBIR,yychar,yyline,yytext());}
modulo {return new Symbol(sym.MODULO,yychar,yyline,yytext());}
entonces  {return new Symbol(sym.ENTONCES,yychar,yyline,yytext());}
"//".* { /*Ignore*/ }
"=" {return new Symbol(sym.COMPARAR,yychar,yyline,yytext());}
"+" {return new Symbol(sym.SIMBOLO_ESPECIAL,yychar,yyline,yytext());}
"-" {return new Symbol(sym.SIMBOLO_ESPECIAL,yychar,yyline,yytext());}
"*" {return new Symbol(sym.SIMBOLO_ESPECIAL,yychar,yyline,yytext());}
"/" {return new Symbol(sym.SIMBOLO_ESPECIAL,yychar,yyline,yytext());}
"(" {return new Symbol(sym.PARENTESIS_ABIERTO,yychar,yyline,yytext());}
")" {return new Symbol(sym.PARENTESIS_CERRADO,yychar,yyline,yytext());}
";" {return new Symbol(sym.FIN_LINEA,yychar,yyline,yytext());}
"," {return new Symbol(sym.SEPARACION,yychar,yyline,yytext());}
":" {return new Symbol(sym.ASIGNACION_VARIABLE,yychar,yyline,yytext());}
":=" {return new Symbol(sym.ASIGNACION_VALOR,yychar,yyline,yytext());}
{L}({L}|{D})* {return new Symbol(sym.IDENTIFICADOR,yychar,yyline,yytext());}
("(-"{D}+")") | {D}+ {return new Symbol(sym.NUMERO,yychar,yyline,yytext());}