package exercicio1;

import java.util.Scanner;

public class ConversaoFC {
	public static void main(String[] args) {
		Scanner entrada = new Scanner(System.in);
		
		double fah = entrada.nextDouble();
		double celcius = (fah - 32) * 5/9;
		
		System.out.println(celcius);
		
		entrada.close();
	}

}
