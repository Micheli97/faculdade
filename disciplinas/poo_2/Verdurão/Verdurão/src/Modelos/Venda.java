package Modelos;

public class Venda {
    // Atributos
    private String nome;
    private float preco, total;
    private int codigo, qtdItens;

    // Construtor
    public Venda(String nome, float preco, int codigo, int qtdItens, float total) {
        this.nome = nome;
        this.preco = preco;
        this.codigo = codigo;
        this.qtdItens = qtdItens;
        this.total = total;
    }

    // Metodos Especiais
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public int getQtdItens() {
        return qtdItens;
    }

    public void setQtdItens(int qtdItens) {
        this.qtdItens = qtdItens;
    }

}
