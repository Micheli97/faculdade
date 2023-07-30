package Operadores;

public class Ternario {
	public static void main(String[] args) {
		
		double media = 9.6;
		String resultadoFinal = media >= 7.0 ?
				"aprovado" : "em recupereação.";
		System.out.println("O aluno está " + resultadoFinal);
		
		double nota = 9.9;
		boolean bomComportamento = false;
		boolean passouPorMedia = nota >= 7;
		boolean temDescnto = bomComportamento && passouPorMedia;
		String resultado = temDescnto ? "Sim" : "Não";
		
		System.out.println("Tem desconto? " + resultado);
		
	}

}
