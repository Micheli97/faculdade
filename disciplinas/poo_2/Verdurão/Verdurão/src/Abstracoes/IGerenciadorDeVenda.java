/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Abstracoes;

import Modelos.Produto;

/**
 *
 * @author paula
 */
public interface IGerenciadorDeVenda {
    void adicionarProduto(Produto produto, String qtdItens, String total);
}
