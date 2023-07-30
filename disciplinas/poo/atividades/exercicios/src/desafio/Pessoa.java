package desafio;

public class Pessoa {
	String nome;
	double peso;
	
	Pessoa(String nome, double peso){
		this.nome = nome;
		this.peso = peso;
	}
	
	void comer(Comida comida) {
		// aqui eu estou definido um metodo que vai receber a clase Comida como parametro
		
		if(comida != null) {
			this.peso += comida.peso;
		}
	}
	
	String apresentar() {
		return "Olá eu sou o(a) " + nome + "e tenho " + peso + "Kgs."; 
	}

}
