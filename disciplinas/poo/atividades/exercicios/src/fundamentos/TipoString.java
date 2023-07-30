package fundamentos;

public class TipoString {
	public static void main(String[] args) {
		System.out.println("Ol� pessoal".charAt(2));
//		aqui eu estou acessando o valor da poi��o 2
		
		String s = "Boa tarde";
		System.out.println(s.concat("!!!")); // aqui est� concatenando
		System.out.println(s + "!!!");  // aqui tambpem est� sendo concatenado
		System.out.println(s.startsWith("Boa"));  // aqui est� verificando se a string 
//		come�a com a palavra passada como parametro
		System.out.println(s.toLowerCase().startsWith("boa"));  // aqui estou colocando
//		os caracteres em minusculos e fazendo uma verifica��o
		System.out.println(s.toUpperCase().endsWith("TARDE")); // aqui eu estou colocando
//		os caracteres em maiusculos e verificando se o final termina com TARDE
		System.out.println(s.length());  // verificando o tamanho da string
		System.out.println(s.toLowerCase().equals("boa tarde"));  // compara a string com
//		o parametro passado
		System.out.println(s.equalsIgnoreCase("boa tarde"));    // ignora letras maiusculas
//		e minusculas na verifica��o
		
		var nome = "Pedro";
		var sobrenome = "Santos";
		var idade = 33;
		var salario = 12345.987;
		
		String maisUmaFrase = "Nome: " + nome + "\nSobrenome: " 
		+ sobrenome + "\nIdade: " + idade + 
		"\nSalario: " + salario + "\n\n";
		System.out.println(maisUmaFrase);
		
		System.out.printf("O senhor %s %s tem %d anos e ganha R$5.2f",
				nome, sobrenome, idade, salario
				);

		String frase = String.format("\nO senhor %s %s tem %d anos e ganha R$%.2f", 
				nome, sobrenome, idade, salario
				);
		System.out.println(frase);
//		aqui eu estou demonstrando que � possivel formartar uma string e armazenar o valor
//		em uma vari�vel e printala
		
		System.out.println("Frase qualquer".contains("qual"));  // ir� retorar um valor boolena
//		se o valor passasdo no parametro estiver dentro da string comparada
		System.out.println("Frase qualquer".indexOf("qual"));  // retorna o indice do inicio da 
//		da string passada como parametro
		System.out.println("Frase qualquer".substring(6));
		System.out.println("Frase qualquer".substring(6, 10));  // aqui ele vai retornar uma substring
//		come�ando do valor incial ate o valor final -1
		
		
	}

}
