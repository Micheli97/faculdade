package controle;

import java.util.Scanner;

public class DoWhile {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        String texto = "";
        // No Do While o programa será executado pelo menos uma vez
        // ao contrario do while que pode nao ser executado
        do {
            System.out.println("Você precisa falar"
             + "as palavaras mágicas...");
             System.out.println("Quer sair: ");
             texto = entrada.nextLine();
             
        }while(!texto.equalsIgnoreCase("por favor"));

        System.out.println("Obrigado!");

        entrada.close();
    }
    
}
