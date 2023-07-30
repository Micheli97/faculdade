package fundamentos;

public class Wrapper {
	public static void main(String[] args) {
//		Objetos dos tipos primitivos
//		convertendo os tipos para objetos e possivel acessar os atributos presentes em objetoss
		Byte b = 100;
		Short s = 1000;
		
		Integer i = 10000;
		Long l = 100000L;
		
		System.out.println(b.byteValue());
		System.out.println(s.toString());
		System.out.println(i*3);
		System.out.println(l / 3);
		
		Float f = 123.10F;
		System.out.println(f);
		
		Double d = 1234.5678;
		System.out.println(d);
		
		Boolean bo = Boolean.parseBoolean("true");  // retorna true or false se o valor passado for
//		igual a algum valor booleano
		System.out.println(bo);
		System.out.println(bo.toString().toUpperCase());
		
		Character c = '#';
		System.out.println(c + "...");
		
		
	}

}
