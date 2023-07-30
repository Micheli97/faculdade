package colecoes;

import java.util.ArrayList;

public class Lista {
	public static void main(String[] args) {
		ArrayList<Usuario> lista = new ArrayList<Usuario>();
		Usuario u1 = new Usuario("Ana");
		lista.add(u1);
		
		lista.add(new Usuario("Luka"));
		lista.add(new Usuario("Manu"));
		lista.add(new Usuario("Rafa"));
		
		System.out.println(lista.get(3)); // aqui eu estou acessando um elemento da lista
		// será impresso seguindo o método toString
		
		System.out.println(lista.remove(1));// removendo pelo indice e retorna o valor removido
		System.out.println(lista.remove(new Usuario("Manu"))); // aqui ele retorna um boolean desde de que o equals e o hashcode estejam definidos
		System.out.println(lista.contains(new Usuario("Rafa"))); // verificando se contem o valor passado retorna um valor boolean  desde de que o equals e o hashcode estejam definidos
		// porque nesses casos ele vai estar verificando valores em diferentes espaços da memoria
		
		for(Usuario pessoa: lista) {
			System.out.println(pessoa); // tem que especificar o atributo que quer mostrar
			// caso o metodo toString nao esteja definido
		}
	}

}
