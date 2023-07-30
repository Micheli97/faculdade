package colecoes;

import java.util.LinkedList;
import java.util.Queue;

public class Fila {
	public static void main(String[] args) {
		Queue<String> fila = new LinkedList<>();
		
		// Offer e Add -> adicionam elementos na fila
		// Diferença é o comportamento quando a lista está cheia!
		
		fila.add("Ana"); // retorna uma exceção
		fila.offer("Bia"); // retorna um valor booelano
		fila.add("Carlos");
		fila.offer("Daniel");
		fila.add("Rafa");
		fila.offer("Gui");
		
		// Peek e Element -> obter o proximo elemento da fila (sem remover)
		
		// Diferença é o comportamento quando a fila está vazia
		System.out.println(fila.peek()); // retorna false
		System.out.println(fila.peek());
		System.out.println(fila.element()); // lança uma exeção
		System.out.println(fila.element());
		
		// fila.size(); tamanho
		// fiila.clear(); limpar
		// fila.isEmpty(); verificar se a fila está vazia
		
		
		// Poll e Remove -> obter o proximo elemento da fila e remove
		// Diferença é o comportamento quando a fila está vazia
		System.out.println(fila.poll()); // retorna null
		System.out.println(fila.remove()); // lança uma exeção
		System.out.println(fila.poll());
		System.out.println(fila.poll());
		System.out.println(fila.poll());
		System.out.println(fila.poll());
	}

}
