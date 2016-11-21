header {package decaf;}

options 
{
  mangleLiteralPrefix = "TK_";
  language="Java";
}

class DecafScanner extends Lexer;
options 
{
  k=2;
}

tokens 
{
  "def";
  "end";
}


ID options { paraphrase = "an identifier"; } : 
  ('a'..'z' | 'A'..'Z')+;

ATRIBUICAO options { paraphrase = "="; } : "=" ;

NUMERO options { paraphrase = "an number"; }  : 
	('0'..'9')+ ('.' ('0'..'9')+ )?;

SL_COMMENT : "//" (~'\n')* '\n' {_ttype = Token.SKIP; newline (); };

CHAR : '\'' (ESC|~'\'') '\'';
STRING : '"' (ESC|~'"')* '"';

protected
ESC :  '\\' ('n'|'"');

OP_SOMA : '+' | '-' ;
OP_DIV : '*' | '/' ;
PAR_ESQ : '(';
PAR_DIR : ')';
PULA_LINHA : '\n';

WS_ : (' ' | '\t' | '\r' {newline();}) {_ttype = Token.SKIP; };
