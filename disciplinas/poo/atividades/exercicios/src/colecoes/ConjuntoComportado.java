package colecoes;

import java.util.HashSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

public class ConjuntoComportado {
	public static void main(String[] args) {
		
//		Set <String> lista = new HashSet<String>();
		SortedSet<String> lista = new TreeSet<String>(); // ordena a coleção
		// aqui eu estou definindo o tipo de valores da coleção
		// estou amarrando o tipo de dad que será recebido
		lista.add("Ana");
		lista.add("Carlos");
		lista.add("Luca");
		lista.add("Pedro");
		
		// ordem de impressao aleatoria
		for(String nome : lista) {
			System.out.println(nome);
		}
		
		Set<Integer> nums = new HashSet<>();
		nums.add(1);
		nums.add(2);
		nums.add(3);
		nums.add(3);
		
		for(int n: nums) {
			System.out.println(n);
		}
		
	}

}
