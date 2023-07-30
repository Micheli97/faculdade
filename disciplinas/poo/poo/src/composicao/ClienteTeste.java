package composicao;


public class ClienteTeste {
    public static void main(String[] args) {
        
        Compra compra1 = new Compra();
        compra1.adicionarItem("Caneta", 1, 100);
        compra1.adicionarItem(new Produto("Notebook", 2000), 2);

        Compra compra2 = new Compra();
        compra2.adicionarItem("Caderno", 10, 10);
        compra2.adicionarItem(new Produto("Impressora", 1000), 1);

        Cliente cliente = new Cliente("Esthela Maria");
        cliente.adicionarCompra(compra1); // essa e a forma mais correta
        cliente.compras.add(compra2);
        

        System.out.println(cliente.obterValorTotal());
        System.out.println(cliente.nome);




    }
    
}
