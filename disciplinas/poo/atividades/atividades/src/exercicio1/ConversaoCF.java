package exercicio1;

import java.util.Scanner;

public class ConversaoCF {
	public static void main(String[] args) {
		Scanner entrada = new Scanner(System.in);
		int celcius = entrada.nextInt();
		
		int fah = (celcius * 9/5 ) + 32;
		
		System.out.println(fah);
		
		entrada.close();
	}

}
