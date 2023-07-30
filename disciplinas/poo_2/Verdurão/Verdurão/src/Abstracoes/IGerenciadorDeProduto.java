/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Abstracoes;

import Modelos.Produto;
import java.util.ArrayList;
/**
 *
 * @author paula
 */
public interface IGerenciadorDeProduto {
    
    void cadastrar(String nome, float preco, int codigo);
    
    void remover(Produto removido);
    
    ArrayList pesquisar(String pesquisa, int tamPesq);
    
    Produto pesquisar(String pesquisa);
    
    void editar(Produto antigo, Produto novo);
    
    void ler(); 
    
    void salvar();
}
