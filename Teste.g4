grammar Teste;

criafuncao : 'def' nomefuncao abreparentese param fechaparentese pulalinha expr pulalinha 'end' ;
expr : expr maismenos expr | expr2 divmult expr2;
expr2 : ID;
nomefuncao : ID;
ID : [a-zA-Z]+ ;
INT : [0-9]+;
param : ID;
maismenos : '+' | '-';
divmult : '*' | '/';



abreparentese : '(';
fechaparentese : ')';
pulalinha : '\n';



WS : [ \t\r]+ -> skip;