package fundamentos;

public class ConversaoNumeroString {
	public static void main(String[] args) {

		Integer num1 = 10000;
		System.out.println(num1.toString().length());

//		A propriedade Integer transforma um tipo primitivo em um objeto, sendo possivel assim
//		aplicar propriedades nele

		int num2 = 100000;
		System.out.println(Integer.toString(num2).length());
		
		System.out.println(("" + num1).length());
		System.out.println(("" + num2).length());
	}

}
