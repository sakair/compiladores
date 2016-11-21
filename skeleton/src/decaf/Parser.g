header {package decaf;}

options
{
  mangleLiteralPrefix = "TK_";
  language="Java";
}

class DecafParser extends Parser;
options
{
  importVocab=DecafScanner;
  k=3;
  buildAST=true;
}

criafuncao : TK_def ID PAR_ESQ ID PAR_DIR PULA_LINHA expr PULA_LINHA TK_end ;
expr : ID OP_SOMA ID | NUMERO OP_SOMA NUMERO | ID OP_DIV ID | NUMERO OP_DIV NUMERO;



