package fundamentos;

import java.util.Scanner;

public class TipoStringEquals {
	public static void main(String[] args) {
		
		System.out.println("2" == "2");
		// aqui � uma forma de comparar strings mas nao e mais indicada
		// porque esta suscetivel a erros
		
		String s1 = new String("2");
		System.out.println("2" == s1);
		// aqui vai dar falso por varias questoes internas da linguagem
		// para corrigir isso usa-se o equals
		System.out.println("2".equals(s1));
		
		Scanner entrada = new Scanner(System.in);
		
		String s2 = entrada.next();
		// o next retira os espa�os que possam vir a ser digitados na string
		// o nextln n�o tira os espa�os, para retirar os espa�os � so usar a propriedaded
		// trim()
		
		System.out.println("2" == s2.trim());
		System.out.println("2".equals(s2.trim()));
		
		entrada.close();
	}

}
