package colecoes;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;


public class Mapa {
	public static void main(String[] args) {
		
		Map<Integer, String> usuarios = new HashMap<Integer, String>();
		usuarios.put(1, "Ricardo"); // o put tanto adiciona como subitui
		usuarios.put(2, "Micheli");
		usuarios.put(3, "Lucca");
		usuarios.put(4, "Gabi");
		
		System.out.println(usuarios.size()); // tamanho
		System.out.println(usuarios.isEmpty()); // verifica se esta vazio
		System.out.println(usuarios.keySet()); // mostra apenas as chaves
		System.out.println(usuarios.values()); // mostra os valores 
		System.out.println(usuarios.entrySet()); // mostras chaves e valores 
		
		System.out.println(usuarios.containsValue("Rebeca")); // verificando se contem valor
		System.out.println(usuarios.containsKey(2)); // verificando se contem a chave
		
		
		System.out.println(usuarios.get(3)); // pegando a chave
		System.out.println(usuarios.remove(1)); // removendo um elemento
		System.out.println(usuarios.remove(1, "Gui")); // removendo passando chave valor, ele retorna false
		
		for(int chave: usuarios.keySet()) { // percorrendo as chaves
			System.out.println(chave);
			// da pra usar interger
		}
		
		for(String valor: usuarios.values()) { // percorrendo os valores
			System.out.println(valor);
		}
		
		for(Entry<Integer, String> registro: usuarios.entrySet()) {
			System.out.print(registro.getKey() + " ==> "); // imprimindo as chaves
			System.out.println(registro.getValue()); // imprimindo os valores
		}
	}

}
