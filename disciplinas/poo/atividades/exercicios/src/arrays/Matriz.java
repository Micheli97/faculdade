package arrays;

import java.util.Scanner;

public class Matriz {
	public static void main(String[] args) {
		Scanner entrada = new Scanner(System.in);
		
		System.out.print("Quantos alunos? ");
		int qtdAlunos = entrada.nextInt();
		
		System.out.print("Quantas notas por aluno? ");
		int qtdNotas = entrada.nextInt();
		
		
		
		double[][] notasDaTuerma = new double[qtdNotas][qtdNotas];
		
		double total = 0;
		for (int a = 0; a < notasDaTuerma.length; a++) {
			for (int n = 0; n <notasDaTuerma[a].length; n++) {
				System.out.printf("Informe a nota %d do aluno %d: ", n+1, a+1);
				notasDaTuerma[a][n] = entrada.nextDouble(); // alimentando a matriz com valores da entrada padrao
				total += notasDaTuerma[a][n];
				
			}
		}
		
		double media = total / (qtdAlunos * qtdNotas);
		System.out.println("Média da turma é " + media);
		
		entrada.close();
	}

}
