package classe;

public class Produto {
	String nome;
	double preco;
	double desconto;
	
	double precoComDesconto () {
		return preco * (1 - desconto);
//		Nao recebe parametros porque ja tem os atributos dentro da classe
	}
//	Em java pode ter dois metodos com o mesmo nome mas a identidade do metodo tem 
//	que ser diferente
	
	double precoComDesconto (double descontoGerente) {
		return preco * (1 - desconto + descontoGerente);
//		Nao recebe parametros porque ja tem os atributos dentro da classe
	}


}
