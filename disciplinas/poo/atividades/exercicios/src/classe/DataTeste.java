package classe;

public class DataTeste {
	public static void main(String[] args) {
		Data d1 = new Data();
		
		d1.ano = 2021;
		
		var d2 = new Data(31,12,2021);
		// Na linha seguinte a instancia não terá mais acesso aos valores dentro do metodo
		// a nao ser que estes esejam associados a variaveis 
		// logo apos sera excluido da memoria
		
		String dataFormatada1 = d1.obterDataFormatada();
		
		System.out.println(dataFormatada1);
		System.out.println(d2.obterDataFormatada());
		
		d1.imprimirDataFormatada();
		d2.imprimirDataFormatada();
//		Data dataToday = new Data();
//		Aqui eu estou instanciando e inicializando a classe
//		dataToday.dia = 12;
//		dataToday.mes = 03;
//		dataToday.ano = 1997;
//		var d2 = new Data(31, 12, 2020)
//		
//		System.out.printf("A data é %d / 0%d / %d\n", dataToday.dia, dataToday.mes, dataToday.ano);
//		
//		String dataFormatada1 = dataToday.obterDataFormatada();
//		
//		System.out.println(dataFormatada1);
//		
//		dataToday.imprimirDataFormatada();
		
	}

}
