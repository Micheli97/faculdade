package fundamentos;

public class ConcersaoTipoPrimitivoNumerico {
	public static void main(String[] args) {
		
		double a = 1; // aqui eu nao converetir porque o valor inteiro cabe dentro de double
		System.out.println(a);
		
		float b = (float) 1.12345678888888; // aqui eu convertir 1.0 manualmente para float pq
//		o literal 1.0 é do tipo double
		System.out.println(b);
		
		int c = 340;
		byte d = (byte) c;  // explícita (CAST)
//		Aqui o cast e por questão de tamanho o Java nao avalia o valor mas sim o tipo, por isso 
//		a conversao
		System.out.println(d);
		
		double e = 1.999999;
		int f = (int) e;
		System.out.println(f);
		
		
		
		
	}

}
