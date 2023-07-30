package controle;

import java.util.Scanner;

public class DesafioWhile {
    public static void main(String[] args) {
        
        Scanner entrada = new Scanner(System.in);

        int quatidadeDeNota = 0;
        double nota = 0;
        double total = 0;

        while(nota != -1){
            System.out.println("Informa a nota (ou -1 p/ sair): ");
            nota = entrada.nextDouble();

            if(nota <= 10 && nota >= 0){
                total += nota;
                quatidadeDeNota++;
            } else{
                System.out.println("Nota inválida!!!");
            }
        }

        double media = total / quatidadeDeNota;
        System.out.println("Media = " + media);

        entrada.close();

    }
    
}
