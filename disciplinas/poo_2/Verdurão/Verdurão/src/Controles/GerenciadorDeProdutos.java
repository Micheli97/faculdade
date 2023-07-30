package Controles;

import Abstracoes.IGerenciadorDeProduto;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Scanner;

import Modelos.Produto;

/**
 *
 * @author paula
 */
public class GerenciadorDeProdutos implements IGerenciadorDeProduto {

    // Atributos
    private ArrayList<Produto> produtos = new ArrayList();

    // Construtor
    public GerenciadorDeProdutos() {
        ler();
    }

    // Metodos Especiais
    public ArrayList<Produto> getProdutos() {
        return produtos;
    }

    // Métodos Publicos
    // Método para cadastramento de um novo produto
    @Override
    public void cadastrar(String nome, float preco, int codigo) {
        Produto novo = new Produto(nome, preco, codigo);
        produtos.add(novo);
        salvar();
    }

    // Metodo para remoção de um produto
    @Override
    public void remover(Produto removido) {
        for (Produto produto : produtos) {
            if (produto.getCodigo() == removido.getCodigo() && produto.getNome().equals(removido.getNome())) {
                produtos.remove(produto);
                salvar();
                break;
            }
        }
    }

    // Metodo para pesquisa de um produto <interfaceProdutos>
    @Override
    public ArrayList pesquisar(String pesquisa, int tamPesq) {
        ArrayList<Produto> aux = new ArrayList();
        for (Produto produto : produtos) {
            if (produto.getNome().length() >= tamPesq) {
                if (produto.getNome().substring(0, tamPesq).equalsIgnoreCase(pesquisa)
                        || (Integer.toString(produto.getCodigo()).equals(pesquisa))) {
                    aux.add(produto);
                }
            }
        }
        return aux;
    }

    // Metodo para pesquisa de um produto <interfaceCaixa>
    @Override
    public Produto pesquisar(String pesquisa) {
        Produto aux = new Produto(null, 0, 0);
        for (Produto produto : produtos) {
            if (Integer.toString(produto.getCodigo()).equals(pesquisa)) {
                aux = produto;
                return aux;
            }
        }
        return aux;
    }

    // Metodo para edição de um produto
    @Override
    public void editar(Produto antigo, Produto novo) {
        for (Produto produto : produtos) {
            if (produto.getNome().equalsIgnoreCase(antigo.getNome())
                    && (produto.getCodigo() == antigo.getCodigo())) {
                produto.setNome(novo.getNome());
                produto.setPreco(novo.getPreco());
                produto.setCodigo(novo.getCodigo());
                break;
            }
        }
        salvar();
    }

    // Adiciona produtos existentes no arquivo
    @Override
    public void ler() {
        try {
            File arquivo = new File("arquivoProdutos.txt");
            // Verifica se o arquivo existe e cria-o caso contrario
            if (!arquivo.exists()) {
                arquivo.createNewFile();
            }
            Scanner sc = new Scanner(arquivo);
            // Roda o while enquanto tiver proxima linha no arquivo
            while (sc.hasNextLine()) {
                String linha = sc.nextLine();
                String registro[] = linha.split("\\;");
                // Intancia um novo produto passando os argumentos encontrados na linha do arquivo
                Produto novo = new Produto(registro[0], Float.parseFloat(registro[1]), Integer.parseInt(registro[2]));
                produtos.add(novo);
            }
        } catch (IOException e) {
            System.out.println("Erro de Leitura!");
        }
    }

    // Salva os dados em um arquivo
    @Override
    public void salvar() {
        try {
            PrintStream ps = new PrintStream("arquivoProdutos.txt");
            for (Produto produto : produtos) {
                ps.println(produto.getNome() + ";" + produto.getPreco() + ";" + produto.getCodigo());
            }
            ps.close();
        } catch (FileNotFoundException e) {
            System.out.println("O arquivo nao existe!");
        }
    }
}
