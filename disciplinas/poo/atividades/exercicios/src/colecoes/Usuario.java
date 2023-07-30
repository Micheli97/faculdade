package colecoes;

public class Usuario {
	int id;
	String nome;
	
	Usuario(String nome){
		this.nome = nome;
	}
	
	public String toString() {
		return "Meu nome é " + this.nome + ".";
	}
	
	@Override
	public boolean equals(Object obj) {
		Usuario outroUsuario =  (Usuario) obj;
		return this.nome.equals(outroUsuario.nome);
	}
	
	@Override
	public int hashCode() {
		return 0;
	}

}
