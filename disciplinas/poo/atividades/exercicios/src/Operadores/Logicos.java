package Operadores;

public class Logicos {
	public static void main(String[] args) {
		
		boolean condicao1 = true;
		boolean condicao2 = 3 > 7;
		
		System.out.println(condicao1 && !condicao2);
		System.out.println(condicao1 || condicao2);
		System.out.println(condicao1 ^ condicao2);
		System.out.println(!!condicao1);
		System.out.println(!condicao1);
		System.out.println("\n");
		
		
		System.out.println("Tabela verdade E");
//		System.out.println(true && true);
//		System.out.println(true && false);
		System.out.println(false && true);
		System.out.println(false && false);
		System.out.println("\n");
		
		System.out.println("Tabela verdade OU");
		System.out.println(true || true);
		System.out.println(true || false);
		System.out.println(false || true);
		System.out.println(false || false);
		System.out.println("\n");
		
		System.out.println("Tabela verdade OU Exclusico (XOR)");
		System.out.println(true ^ true);
		System.out.println(true ^ false);
		System.out.println(false ^ true);
		System.out.println(false ^ false);
		System.out.println("\n");
		
		System.out.println("Tabela verdade NOT");
		System.out.println(!true);
		System.out.println(!false);
	}

}
