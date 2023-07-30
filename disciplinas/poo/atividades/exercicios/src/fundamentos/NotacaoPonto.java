package fundamentos;

public class NotacaoPonto {
	public static void main(String[] args) {

		String s = "Boa noite X";
//		String não faz parte de um dos tipos primitivos do java
		s = s.replace("X", "Senhora");
		s = s.toUpperCase();
		s = s.concat("!!!");

		System.out.println(s);

		String x = "Paula".toUpperCase();
		System.out.println(x);

		String y = "Boa noite X".replace("X", "Gui").toUpperCase().concat("!!!");
		System.out.println(y);
		
//		Tipos primitivos nao tem operador "."
	}

}
