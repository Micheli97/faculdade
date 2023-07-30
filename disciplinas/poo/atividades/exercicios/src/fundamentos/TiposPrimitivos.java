package fundamentos;

public class TiposPrimitivos {
	public static void main(String[] args) {
//		Informa��es do funcionario
		
//		Tipos numericos inteiros
		byte anosDeEmpresa = 23;
		short numeroDeVoos = 542;
		int id = 56789;
		long pontosAcuulados = 3_134_845_223L;
//		O uso dod L ao final do numero � para enfatizar que o valor
//		est� convertido para long, se n�o ele vai entender que � inteiro e
//		da erro de tamanho
		
//		Tipos numericos reais
		float salario = 11_445.44F;
//		O uso do F ao final do numero segue a mesma l�gica de cima 
//		O numero com ponto flutuante � originalmente double e double e maior que float
//		logo n�o cabe pq o Java verifica o tipo e n�o o valor. Por isso tem que usar
//		o F para converter o valor para float
		double vendasAcumuladas = 2_991_797_103.01;
		
//		Tipo booleano
		boolean estaDeFerias = false;
		
//		Tipo caractere
		char status = 'A'; // ativo
//		exe��o de valor para char e usar \u0010 (esse numero e so um exemplo) que 
//		representa um caractere dentro da
//		tabela unicode
		
//		Dias de empresa
		System.out.println(anosDeEmpresa * 365);
		
//		Numero de viagens 
		System.out.println(numeroDeVoos/2);
		
//		Pontos por real
		System.out.println(pontosAcuulados / vendasAcumuladas);
		
		System.out.println(id + ": ganha -> " + salario);
		System.out.println("F�rias " + estaDeFerias );
		

		
	}

}
