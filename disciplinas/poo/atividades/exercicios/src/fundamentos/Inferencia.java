package fundamentos;

public class Inferencia {
	public static void main(String[] args) {
		
		double a = 4.5;  // declara��o e inicializa��o
		System.out.println(a);
		
		var b = 4.5;		
		System.out.println(b);
//		ao utilizar var o java ir� inferir o tipo de valor atribuido
//		quando se declara variavel com var ela precisar ser declarada e 
//		inicializada na mesma linha

		
		var c = "outro texto";
		System.out.println(c);
		
		var d = "Texto";
		System.out.println(d);
		
		double e;  // variavel foi declarada
		e = 123.65;  // variavel foi inicializada
		System.out.println(e); // usada
	}

}
