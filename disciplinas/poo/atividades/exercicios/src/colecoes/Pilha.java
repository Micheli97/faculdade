package colecoes;

import java.util.ArrayDeque;
import java.util.Deque;

public class Pilha {
	public static void main(String[] args) {
		
		Deque<String> livros = new ArrayDeque<String>();
		// pode difinir o tamanho maximo de uma pilha
		
		
		livros.add("O pequeno Principe"); // se add ou n�o retorna verdadeiro ou falso
		livros.push("Dom Quixote"); // se n�o de certo add nao retorna nada e gera uma exe��o
		livros.push("O Hobbit");
		
		for(String livro: livros) {
			System.out.println(livro);
		}
		
		System.out.println(livros.peek()); // funciona da mesma forma que na fila
		System.out.println(livros.element()); 
		System.out.println(livros.poll());
		System.out.println(livros.pop()); // remove o ultimo elemento
		
		// pilha.size(); tamanho
		// pilha.clear(); limpar
		// pilha.contains(); verifica se tem um elemento na pilha
	}
	

}
