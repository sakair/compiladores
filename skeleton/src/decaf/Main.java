package decaf;

import java.io.*;
import antlr.Token;
import java6035.tools.CLI.*;

class Main {
    public static void main(String[] args) {
        try {
        	CLI.parse (args, new String[0]);
        	
        	InputStream inputStream = args.length == 0 ?
                    System.in : new java.io.FileInputStream(CLI.infile);

        	if (CLI.target == CLI.SCAN)
        	{
        		DecafScanner lexer = new DecafScanner(new DataInputStream(inputStream));
        		Token token;
        		boolean done = false;
        		while (!done)
        		{
        			try
        			{
		        		for (token=lexer.nextToken(); token.getType()!=DecafParserTokenTypes.EOF; token=lexer.nextToken())
		        		{
		        			String type = "";
		        			String text = token.getText();
		
		        			switch (token.getType())
		        			{
		        			case DecafScannerTokenTypes.ID:
		        				type = "IDENTIFICADOR";
		        				break;
                                                case DecafScannerTokenTypes.NUMERO:
                                                        type = "NUMERO";
                                                        break;
                                                case DecafScannerTokenTypes.OP_SOMA:
                                                        type = "OP_SOMA";
                                                        break;
                                                case DecafScannerTokenTypes.OP_DIV:
                                                        type = "OP_DIV";
                                                        break;
                                                case DecafScannerTokenTypes.TK_def:
                                                        type = "DEF_FUNCAO";
                                                        break;
                                                case DecafScannerTokenTypes.TK_end:
                                                        type = "FIM_FUNCAO";
                                                        break;
                                                case DecafScannerTokenTypes.PAR_ESQ:
                                                        type = "PAR_ESQ";
                                                        break;
                                                case DecafScannerTokenTypes.PAR_DIR:
                                                        type = "PAR_DIR";
                                                        break;   
						case DecafScannerTokenTypes.PULA_LINHA:
		        				type = "QUEBRA_LINHA";
		        				break;		
		        			}
		        			System.out.println (token.getLine() + type + " " + text);
		        		}
		        		done = true;
        			} catch(Exception e) {
        	        	// print the error:
        	            System.out.println(CLI.infile+" "+e);
        	            lexer.consume ();
        	        }
        		}
        	}
        	else if (CLI.target == CLI.PARSE || CLI.target == CLI.DEFAULT)
        	{
        		DecafScanner lexer = new DecafScanner(new DataInputStream(inputStream));
        		DecafParser parser = new DecafParser (lexer);
                parser.criafuncao();
        	}
        	
        } catch(Exception e) {
        	// print the error:
            System.out.println(CLI.infile+" "+e);
        }
    }
}

