package classe;

public class Equals {
	public static void main(String[] args) {
		
		Usuario u1 = new Usuario(); // aqui eu instanciei a classe em uma variavel 
		// (u1) e criei o objeto atravez do metodo-contrutor
		// aqui eu estou acessando os atributos da classe
		u1.nome = "Pedro Lucas"; 
		u1.email = "predrogatinho123@gmail.com";
		
		// aqui eu vou criar um segundo objeto instanciando a classe
		Usuario u2 = new Usuario();
		u2.nome =  "Pedro Lucas";
		u2.email = "predrogatinho123@gmail.com";
		
		
		// como ambos os objetos estão alocados em espaços de memorias diferentes
		// o uso do == verifica referencias, como nesse caso, é diferente o resultado
		// sera false
		System.out.println(u1 == u2);
		
		// Por mais que aqui nao tenha sido definido o equal, por padrao toda classe dispoe
		// desse metodo
		// como nesse caso não ha implementação do equals, por padrao, ele faz a mesma coisa que o 
		// == 
		System.out.println(u1.equals(u2));
		System.out.println(u2.equals(u1));
	}

}
