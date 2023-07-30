package fundamentos;
import java.util.Date;

public class Import {
	public static void main(String[] args) {
		java.lang.String b = "Boa noite!";
		java.lang.System.out.println(b);
//		java.lang é um atributo padrão e a forma mais completa
//		de se escrever um código em java, porém ele está implicito
//		e por ser padrão fica "embutido"
		
		String s = "Boa noite!!";
		System.out.println(s);
//		forma padrão de escrever e declarar string
		
		Date d = new Date();
		System.out.println(d);
//		ao clicar no erro que fica ao lado nas linhas é possível ver
//		informações que podem ajudar a concertar é igual ao Dart/Flutter
	}

}
