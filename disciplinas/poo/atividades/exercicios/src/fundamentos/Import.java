package fundamentos;
import java.util.Date;

public class Import {
	public static void main(String[] args) {
		java.lang.String b = "Boa noite!";
		java.lang.System.out.println(b);
//		java.lang � um atributo padr�o e a forma mais completa
//		de se escrever um c�digo em java, por�m ele est� implicito
//		e por ser padr�o fica "embutido"
		
		String s = "Boa noite!!";
		System.out.println(s);
//		forma padr�o de escrever e declarar string
		
		Date d = new Date();
		System.out.println(d);
//		ao clicar no erro que fica ao lado nas linhas � poss�vel ver
//		informa��es que podem ajudar a concertar � igual ao Dart/Flutter
	}

}
