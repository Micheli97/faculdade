package exercicio1;

import java.util.Scanner;

public class Imc {
	public static void main(String[] args) {
		Scanner entrada = new Scanner(System.in);
		
		double altura = entrada.nextDouble();
		double peso = entrada.nextDouble();
		
		double imc = peso / (altura * altura);
		
		System.out.println(imc);
		
		entrada.close();
	}

}
