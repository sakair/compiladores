# compiladores
projeto ceub
Para o analisador léxico funcionar é preciso do NetBeans, pacotes jdk e JFlex instalados na máquina. Abra o projeto no netbeans e em 
seguida adicione a biblioteca JFlex no projeto clicando com o botão direito sobre bibliotecas e adicionar JAR/Pasta. 
O projeto possui 3 classes e 1 arquivo .flex que contém todos os símbolos da linguagem Ruby e o que a linguagem aceita.

 - A classe analisador, quando executado gera um arquivo Lexer.java que possui o código do analisador léxico gerado.
 - Para se gerar a classe Lexer.java, tem de especificar o caminho em que o arquivo .flex se encontra.

Para a segunda parte, tem de se gerar uma parse tree a partir de uma gramática, que no meu caso será a criação de uma função que calcula o resultado de uma expressão qualquer linguagem Ruby. É uma gramática simples, pois se eu fosse abordar tudo o que a linguagem pode fazer o projeto iria ficar muito extenso e de difícil entendimento. 
Nesta etapa houve uma mudança no uso da ferramenta a ser utilizada. O JFlex foi substituído pelo ANTLR4, pelo fato de ser mais fácil gerar uma parse tree por esta ferramenta.

Para fazer a intalação da ferramenta tanto no linux quanto no Windows um tutorial foi disponibilizado no próprio GitHub:
https://github.com/antlr/antlr4/blob/master/doc/getting-started.md
Este tutorial também explica como compilar e gerar a árvore de parsing.
