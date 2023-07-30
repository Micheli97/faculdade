package colecoes;

import java.util.HashSet;
import java.util.Set;

public class ConjuntoBagunçado {
	public static void main(String[] args) {
		
		HashSet conjunto = new HashSet();
		
		//Coleções nao suportam tipos primitivos
		// mas nesse caso ele faz uma conversao automatica
		
		conjunto.add(1.2); // double -> Double
		conjunto.add(true); // boolean -> Boole
		conjunto.add("Teste"); // String
		conjunto.add(1);   // int -> Interger
		conjunto.add('x'); // aqui converte do char para o caractere
		
		System.out.println("Tamanho é " + conjunto.size());  //aqui mostra o tamanho do conjunto
		System.out.println(conjunto.remove("Teste")); // aqui eu estou removendo o item Teste
		System.out.println("Tamanho é " + conjunto.size());
		
		// Esse metodo verifica se o elemento está ou nao dentro do conjunto e retorna um valor bool
		System.out.println(conjunto.contains("Teste"));
		System.out.println(conjunto.contains(1));
		
		Set nums = new HashSet(); // e possivel criar uma variavel do tipo set
		
		nums.add(1);
		nums.add(2);
		nums.add(3);
		
		System.out.println(nums);
		System.out.println(conjunto);
		
		conjunto.addAll(nums); // aqui eu estou unindo conjuntos
		System.out.println(conjunto);
		
		conjunto.retainAll(nums); // aqui ele faz a interceção dos conjuntos
		System.out.println(conjunto);
		
		conjunto.clear(); // aqui ele limpa os conjuntos
		System.out.println(conjunto);
	}

}
