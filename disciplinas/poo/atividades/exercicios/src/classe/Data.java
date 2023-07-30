package classe;

public class Data {
	int dia;
	int mes;
	int ano;
	
	final int x;  // declaração da constante
	
	Data (){
//		System.out.printf("01/01/2021\n");
//		Contrutor padrão que quando não for passado nenhum valor sera mostrado
//		essa data
//		dia = 12;
//		mes = 03;
//		ano = 1997;
		this(12, 03, 1997);
	}
	Data (int dia, int mes, int ano){// valores passados dentro do construtor só estarão visiveis dentro da criaçao do metodo
		this.dia = dia;  // aqui eu estou acessando uma instancia da classe através do this
		this.mes = mes;  // e resolvendo o erro de conflito de nome 
		this.ano = ano;
		
		x = 100; // inicializando a cosntante antes do final da construçao do objeto
	}
// Aqui eu instanciei a classe 
	String obterDataFormatada() {
		final String formato = "%d/%d/%d"; // variavel local
		return String.format(formato, dia, mes, ano);
	}
	
	void imprimirDataFormatada() {
		System.out.printf("%d/%d/%d", dia, mes, ano);
	}
	
	void imprimirChamandoOutroMetodoDataFormatada() {
		System.out.println(obterDataFormatada());
//		so funciona em terminal, no desktop, celular e web nao funciona
	}
//	imprimindo chamando um metodo chamando outro
}
