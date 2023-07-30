package classe;

public class Usuario {
	String nome;
	String email;
	
	
	public boolean equals(Object objeto) {
		
		if(objeto instanceof Usuario) { // aqui eu estou verificando se o objeto pode ser convertido
			// para a classe Usuario. Se for verdade vai executar as linhas abaixo
			Usuario outro = (Usuario) objeto;
			boolean nomeIgual = outro.nome.equals(this.nome);
//			boolean nomeIgual = outro.nome == this.nome; Não é uma boa pratica utilizar o ==
			boolean emailIgual = outro.email.equals(this.email);
			// o 
			
			return nomeIgual && emailIgual;
			
		}else {
			return false;
		}
		
		
	}
}
// Falta o hashcode

// Por mais que aqui nao tenha sido definido o equal, por padrao toda classe dispoe
// desse metodo

// Quando se compara objetos diretamente nao precisa usar o hashcode
// Porem quando e utiliza estruturas que utilizam o hashcode como o hashmap, por exemplo,
// se não implementar de forma coerente irá apresentar problemas