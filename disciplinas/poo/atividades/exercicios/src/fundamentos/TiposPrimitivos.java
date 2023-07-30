package fundamentos;

public class TiposPrimitivos {
	public static void main(String[] args) {
//		Informações do funcionario
		
//		Tipos numericos inteiros
		byte anosDeEmpresa = 23;
		short numeroDeVoos = 542;
		int id = 56789;
		long pontosAcuulados = 3_134_845_223L;
//		O uso dod L ao final do numero é para enfatizar que o valor
//		está convertido para long, se não ele vai entender que é inteiro e
//		da erro de tamanho
		
//		Tipos numericos reais
		float salario = 11_445.44F;
//		O uso do F ao final do numero segue a mesma lógica de cima 
//		O numero com ponto flutuante é originalmente double e double e maior que float
//		logo não cabe pq o Java verifica o tipo e não o valor. Por isso tem que usar
//		o F para converter o valor para float
		double vendasAcumuladas = 2_991_797_103.01;
		
//		Tipo booleano
		boolean estaDeFerias = false;
		
//		Tipo caractere
		char status = 'A'; // ativo
//		exeção de valor para char e usar \u0010 (esse numero e so um exemplo) que 
//		representa um caractere dentro da
//		tabela unicode
		
//		Dias de empresa
		System.out.println(anosDeEmpresa * 365);
		
//		Numero de viagens 
		System.out.println(numeroDeVoos/2);
		
//		Pontos por real
		System.out.println(pontosAcuulados / vendasAcumuladas);
		
		System.out.println(id + ": ganha -> " + salario);
		System.out.println("Férias " + estaDeFerias );
		

		
	}

}
