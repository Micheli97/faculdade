package Operadores;

public class Unarios {
	public static void main(String[] args) {
		
		int a = 1;
		int b = 2;
		
		// Execu��o mais "lenta" em compara��o com outras precedencias
		a++;
		a--;
		
		// Execu��o mais "lenta" em compara��o com outras precedencias
		++b;
		--b;
		
		System.out.println(a);
		System.out.println(b);
		
		System.out.println("Mini Desafio...");
		System.out.println(++a == b--);
		System.out.println(a == b);
		System.out.println(a);
		System.out.println(b);
		
	}

}
