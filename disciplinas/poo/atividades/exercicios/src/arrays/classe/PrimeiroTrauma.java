package classe;

public class PrimeiroTrauma {
	int a = 3;
	static int b = 4;
//	atributo de instancia 

	public static void main(String[] args) {
		PrimeiroTrauma variavel = new PrimeiroTrauma();
//		so da pra acessar um membro de instancia de iniciar a classe
//		precisa intanciar a classe para acessar o atributo
		System.out.println(variavel.a);
		System.out.println(b);
	}

}
 