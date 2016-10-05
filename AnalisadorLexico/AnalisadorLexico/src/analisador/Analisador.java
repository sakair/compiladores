
package analisador;

import java.io.File;


public class Analisador {
    
    
   //Este código gera o arquivo Lexer.java que é o código que faz toda a análise léxica da entrada.
    //Como o arquivo Lexer.java já foi gerado, o código está comentado. Se quiser gerá-lo novamente exclua a classe Lexer.java e execute esta classe novamente. Um erro será apontado mas ignore-o.
    
    public static void gerarLexer(String path){
        File file = new File(path);
        jflex.Main.generate(file);
        
    }
    public static void main(String[] args) {
        // TODO code application logic here
        //Caminho para o arquivo .flex que contém todos os simbolos do java e suas resgras para construção
        String path = "C:/Users/e1167890/Documents/AnalisadorLexico/src/analisador/Lexer.flex";
        gerarLexer(path);
    }
}
