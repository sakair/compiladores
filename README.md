# compiladores
SEGUNDA PARTE

Para a segunda parte, tem de se gerar uma parse tree a partir de uma gramática, que no meu caso será a criação de uma função que calcula o resultado de uma expressão qualquer linguagem Ruby. É uma gramática simples, pois se eu fosse abordar tudo o que a linguagem pode fazer o projeto iria ficar muito extenso e de difícil entendimento. 
Nesta etapa houve uma mudança no uso da ferramenta a ser utilizada. O JFlex foi substituído pelo ANTLR4, pelo fato de ser mais fácil gerar uma parse tree por esta ferramenta.

Para fazer a intalação da ferramenta tanto no linux quanto no Windows um tutorial foi disponibilizado no próprio GitHub:
https://github.com/antlr/antlr4/blob/master/doc/getting-started.md
Este tutorial também explica como compilar e gerar a árvore de parsing.

TECEIRA PARTE

Para executar esta parte, se precisa da ferramenta ANT instalada.
Os arquivos necessários para compilação estão em skeleton/src. 
O arquivo com o código para teste está na pasta skeleton.

Para compilar o projeto, entre na pasta skeleton pelo prompt (Windows) ou terminal (Linux) e digite o comando $ ant.
Depois disso, tem de se executar o comando $ java -jar dist/Compiler.jar -target scan teste.txt também no terminal ou Prompt.


