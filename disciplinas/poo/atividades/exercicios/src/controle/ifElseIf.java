package controle;

import java.util.Scanner;

public class ifElseIf {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digita a nota: ");

        double nota = entrada.nextDouble();

        if(nota > 10 || nota < 0){
            System.out.println("Nota válida");
        } else if(nota >= 8.1){
            System.out.println("Conceito A");
        } else if(nota >= 6.1){
            System.out.println("Conceito b");
        } else if(nota >= 4.1){
            System.out.println("Conceito c");
        } else if(nota >= 2.1){
            System.out.println("Conceito d");
        } else{
            System.out.println("Conceito e");
        }

        System.out.println("Fim!");
        entrada.close();

    }
    
}
