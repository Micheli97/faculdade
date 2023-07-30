package Controles;

import Abstracoes.IGerenciadorDeVenda;
import java.util.ArrayList;

import Modelos.Venda;
import Modelos.Produto;

/**
 *
 * @author paula
 */
public class GerenciadorDeVendas implements IGerenciadorDeVenda {
    // Atributos
    private float subTotal;
    private final GerenciadorDeProdutos produtoAux = new GerenciadorDeProdutos();
    private ArrayList<Venda> vendas = new ArrayList();
    
    //Construtor
    public GerenciadorDeVendas() {
        this.subTotal = 0;
    }

    // Metodos especiais
    public float getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(float subTotal) {
        this.subTotal = subTotal;
    }

    public ArrayList<Venda> getVendas() {
        return vendas;
    }

    // Métodos publicos
    //Método para adicionar um produto a comanda
    @Override
    public void adicionarProduto(Produto produto, String qtdItens, String total) {
        Venda novo = new Venda(produto.getNome(), produto.getPreco(),
                produto.getCodigo(), Integer.parseInt(qtdItens), Float.parseFloat(total));
        vendas.add(novo);

    }

}
