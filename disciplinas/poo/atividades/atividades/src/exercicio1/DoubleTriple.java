package exercicio1;

import java.util.Scanner;

public class DoubleTriple {
	public static void main(String[] args) {
		Scanner entrada = new Scanner(System.in);
		
		double dobroo = entrada.nextDouble();
		double triple = entrada.nextDouble();
		
		double rDouble = dobroo * dobroo;
		double rTriple = triple * triple * triple;
		
		System.out.println(rDouble);
		System.out.println(rTriple);
		
		entrada.close();
		
	}

}
