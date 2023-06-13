grammar compiladores;

@header { package compiladores; }

fragment LETRA:[A-Za-z];
fragment DIGITO: [0-9];

PYC: ';';
PA: '(';
PC: ')';
LLA: '{';
LLC: '}';
ASIGN: '=';
COMA: ',';
SUMA: '+';
RESTA: '-';
MULT: '';
DIV: '/';
MOD: '%';
EQ: '==';

NUMERO: DIGITO+;
INT: 'int';
ID: (LETRA | '') (LETRA | DIGITO | '');

WS: [ \t\n\r] -> skip;

programa: instrucciones EOF;

instrucciones: instruccion instrucciones |;

instruccion: asignacion | declaracion | bloque;

bloque: LLA instrucciones LLC;

asignacion: ID ASIGN expresion PYC | error_falta_pyc;

declaracion:
    INT ID inicializacion listaid PYC
    | error_lista_decl;

inicializacion: ASIGN NUMERO |;

listaid: COMA ID inicializacion listaid |;

expresion: termino exp;

exp: SUMA termino exp | RESTA termino exp |;

termino: factor term;

term: MULT factor term | DIV factor term | MOD factor term |;

factor: NUMERO | ID | PA expresion PC | error_falta_par;

error_falta_pyc:
    instruccion -> fail["Falta de un punto y coma"];
error_falta_par:
    PA expresion -> fail["Falta de apertura de paréntesis"];
error_lista_decl:
    declaracion listaid COMA -> fail["Formato incorrecto en lista de declaración de variables"];