package fundamentos;

public class Temperatura {
	public static void main(String[] args) {
		
		double fahrenheit = 83;
		final int AJUSTE = 32;
		final double FATOR = 5.0/9.0;
		
		double grausCelcius = (fahrenheit - AJUSTE) * FATOR;
		
		System.out.println("O resusltado � "  +  grausCelcius  + "�C");
		
		
	}

}
