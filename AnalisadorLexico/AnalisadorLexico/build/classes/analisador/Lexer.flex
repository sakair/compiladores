package analisador;

import static analisador.Token.*;
%%
%class Lexer
%type Token

L = [a-zA-Z_]
D = [0-9]
VAR = [$] /* Variáveis globais em Ruby tem um cifrão antes do nome */
VAR_INST = [@] /* Variáveis de instância em Ruby tem um arroba antes do nome, enquanto que as variáveis de classe tem dois arrobas antes do nome */
branco=[ \t]
pula_linha = [\r\n]

%{
public String lexeme;
%}
%%
{branco} {/*Ignore*/}
{pula_linha} {lexeme = yytext(); return QUEBRA_LINHA;}

/*Todas as palavras reservadas do Ruby*/
(private | public | class | extends | final 
| implements | alias | and | begin | break | case | def | defined | do | else | elsif | end | ensure 
|for | if | in | module | next | nil | not | or | redo | rescue | retry | return | self | super 
| then | undelf | unless | until | when | while | yield) {lexeme = yytext(); return PALAVRA;}

/*Aritm�ticos */

( "+" | "-" | "*" | "/" | "%" | "**")    {lexeme = yytext(); return OPERADOR_ARITMETICO;}

/* L�gicos */
("&&" | "||" | "not")    {lexeme = yytext(); return OPERADOR_LOGICO;}

/*Relacionais */
(">" | "<" | "==" | "!=" | ">=" | "<=")   {lexeme = yytext(); return OP_RELACIONAL;}

/* Atribui��o */
("+=" | "-="  | "*=" | "/=" | "%=" | "++" | "--" | "=")      {lexeme = yytext(); return OP_ATRIBUICAO;}

/*Boleanos*/
(true | false)      {lexeme=yytext(); return OP_BOOLEANO;}

/*Separadores */
("(" | ")" | "{" | "}" | "[" | "]" | ";" | "," |  "." |  "\"")      {lexeme = yytext(); return SEPARADOR;}


/*(\b | "\t" | "\n" | "\f")   {lexeme = yytext(); return ESPECIAL;} */


( "#" )     {lexeme = yytext(); return COMENTARIO;}


{L}({L}|{D})* {lexeme=yytext(); return ID;}
("(-"{D}+")")|{D}+ {lexeme=yytext(); return NUMERO;}
{VAR}{L}({L}|{D})* {lexeme=yytext(); return VARIAVEL;} /* expressão regular variável global */
{VAR_INST}{L}({L}|{D})* {lexeme=yytext(); return VARIAVEL_INSTANCIA;} /* expressão regular variável de instância */
{VAR_INST}{VAR_INST}{L}({L}|{D})* {lexeme=yytext(); return VARIAVEL_CLASSE;} /* expressão regular variável de classe */




. {return ERROR;}