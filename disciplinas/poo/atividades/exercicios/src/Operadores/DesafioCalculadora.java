package Operadores;

import java.util.Scanner;

public class DesafioCalculadora {
	public static void main(String[] args) {
		
		Scanner entrada = new Scanner(System.in);
		
		System.out.print("Informe o n�mero: ");
		double num1 = entrada.nextDouble();
		
		System.out.print("Informe o n�mero: ");
		double num2 = entrada.nextDouble();
		
		System.out.print("Informe uma operra��o: ");
		String op = entrada.next();
		
		
		// L�gica
		double resultado = "+".equals(op) ? num1 + num2 : 0;
		resultado = "-".equals(op) ? num1 - num2 : resultado;
		resultado = "*".equals(op) ? num1 * num2 : resultado;
		resultado = "/".equals(op) ? num1 / num2 : resultado;
		resultado = "%".equals(op) ? num1 % num2 : resultado;
		// se for falso ele vai retornar o valor do resultado verdadeiro
		
		System.out.printf("%.2f %s %.2f = %.2f", num1, op, num2, resultado);
		
		entrada.close();
		

//		Scanner entrada = new Scanner(System.in);
//
//		int valor1 = entrada.nextInt();
//		int valor2 = entrada.nextInt();
//		String operacao = entrada.next();
//
//		System.out.println("+".equals(operacao) ? valor1 + valor2 : "");
//		System.out.println("-".equals(operacao) ? valor1 - valor2 : "");
//		System.out.println("*".equals(operacao) ? valor1 * valor2 : "");
//		System.out.println("/".equals(operacao) ? valor1 / valor2 : "");
//		
//		entrada.close();

	}

}
