package fundamentos;

public class AreaCircuferencia {
	public static void main(String[] args) {
		
		double raio = 3.4;
		final double Pi = 3.14159;
//		O uso do final faz com que o valor não seja modificado ao longo do codigo
//		Por convensão o nome da variavel de uma constante deve ser com letra maiuscula
		
		double area = Pi * raio * raio;
		
		System.out.println(area);
	}

}
