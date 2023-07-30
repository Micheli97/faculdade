package fundamentos;

import java.util.Scanner;

public class Console {

	public static void main(String[] args) {
		System.out.println("Boa");
		System.out.println("noite\n\n");

//		o print terminado em ln quebra a linha ao imprimir 
		System.out.println("Boa");
		System.out.println("noite");

		System.out.printf("Megasena: %d %d %d %d %d %d", 1, 2, 3, 4, 5, 6);
		System.out.printf("Salario: %.1f%n", 1234.5678);
		System.out.printf("Nome: %s%n", "Joao");
		
//		Aqui e a forma de receber valores da entrada padrao
		
		Scanner entrada = new Scanner(System.in);
//		System.in aponta para o teclado, tudo que for digitado no teclado
		
		System.out.println("Digite o seu nome: ");
		String nome = entrada.next();
//		aqui eu estou definindo o tipo de entrada padrão str, int, double...
		
		System.out.println("Digite o seu sobrenome: ");
		String sobrenome = entrada.next();
		
		System.out.println("Digite o sua idade: ");
		int idade = entrada.nextInt();
		
		System.out.printf("%s %s tem %d anos. %n",
				nome, sobrenome, idade
				);
		
		entrada.close();
		
//		precisa fehcar o input
		
		
	}

}
