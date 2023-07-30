package colecoes;

import java.util.LinkedList;
import java.util.Queue;

public class Fila {
	public static void main(String[] args) {
		Queue<String> fila = new LinkedList<>();
		
		// Offer e Add -> adicionam elementos na fila
		// Diferen�a � o comportamento quando a lista est� cheia!
		
		fila.add("Ana"); // retorna uma exce��o
		fila.offer("Bia"); // retorna um valor booelano
		fila.add("Carlos");
		fila.offer("Daniel");
		fila.add("Rafa");
		fila.offer("Gui");
		
		// Peek e Element -> obter o proximo elemento da fila (sem remover)
		
		// Diferen�a � o comportamento quando a fila est� vazia
		System.out.println(fila.peek()); // retorna false
		System.out.println(fila.peek());
		System.out.println(fila.element()); // lan�a uma exe��o
		System.out.println(fila.element());
		
		// fila.size(); tamanho
		// fiila.clear(); limpar
		// fila.isEmpty(); verificar se a fila est� vazia
		
		
		// Poll e Remove -> obter o proximo elemento da fila e remove
		// Diferen�a � o comportamento quando a fila est� vazia
		System.out.println(fila.poll()); // retorna null
		System.out.println(fila.remove()); // lan�a uma exe��o
		System.out.println(fila.poll());
		System.out.println(fila.poll());
		System.out.println(fila.poll());
		System.out.println(fila.poll());
	}

}
