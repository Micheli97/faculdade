package exercicio1;

import java.util.Scanner;

public class Baskhara{
    public static void main(String[] args) {
        
        Scanner entrada = new Scanner(System.in);
        int a = entrada.nextInt();
        int b = entrada.nextInt();
        int c = entrada.nextInt();

        double delta = (b*b) - (4*a*c);
        System.out.printf("%.2f", delta);

        entrada.close();
    }

}