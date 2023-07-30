/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Controles.GerenciadorDeVendas;
import Controles.GerenciadorDeProdutos;
import Modelos.Produto;

import Modelos.Tabela;
import java.awt.event.KeyEvent;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import javax.swing.ListSelectionModel;


public class Venda extends javax.swing.JFrame {

    int flag = 0;
    String animal;
    GerenciadorDeVendas venda = new GerenciadorDeVendas();
    
    Produto produto = new Produto(null, 0, 0);
    
    GerenciadorDeProdutos produtoAux = new GerenciadorDeProdutos();

   
    public Venda() {
        initComponents();
        tfTotal.setText("0");
        preencherTabela(venda.getVendas());
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        ifPagamento = new javax.swing.JInternalFrame();
        btnConfirmar = new javax.swing.JButton();
        tfDinheiro = new javax.swing.JTextField();
        tfTotalPag = new javax.swing.JTextField();
        tfTroco = new javax.swing.JTextField();
        jlBGPagamento = new javax.swing.JLabel();
        tfCodigo = new javax.swing.JTextField();
        tfNome = new javax.swing.JTextField();
        tfPreco = new javax.swing.JTextField();
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tabelaServicos = new javax.swing.JTable();
        tfSubtotal = new javax.swing.JTextField();
        btnAdd = new javax.swing.JButton();
        tfTotal = new javax.swing.JTextField();
        btnFinalizarVenda = new javax.swing.JButton();
        btnCancelarVenda = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        tfQtd = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jMenuBar1 = new javax.swing.JMenuBar();
        MenuClientes1 = new javax.swing.JMenu();
        MenuCaixa = new javax.swing.JMenu();
        MenuSair = new javax.swing.JMenu();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Caixa");
        setResizable(false);
        getContentPane().setLayout(null);

        ifPagamento.setTitle("Finalização de venda");
        ifPagamento.setVisible(false);
        ifPagamento.getContentPane().setLayout(null);

        btnConfirmar.setBackground(new java.awt.Color(0,0,0,0));
        btnConfirmar.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        btnConfirmar.setEnabled(false);
        btnConfirmar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnConfirmarActionPerformed(evt);
            }
        });
        ifPagamento.getContentPane().add(btnConfirmar);
        btnConfirmar.setBounds(19, 283, 262, 36);

        tfDinheiro.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        tfDinheiro.setBorder(null);
        tfDinheiro.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                tfDinheiroKeyPressed(evt);
            }
        });
        ifPagamento.getContentPane().add(tfDinheiro);
        tfDinheiro.setBounds(23, 155, 250, 30);

        tfTotalPag.setEditable(false);
        tfTotalPag.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        tfTotalPag.setBorder(null);
        ifPagamento.getContentPane().add(tfTotalPag);
        tfTotalPag.setBounds(23, 82, 250, 30);

        tfTroco.setEditable(false);
        tfTroco.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        tfTroco.setBorder(null);
        ifPagamento.getContentPane().add(tfTroco);
        tfTroco.setBounds(23, 220, 250, 30);

        jlBGPagamento.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagens/telaPagamento.png"))); // NOI18N
        ifPagamento.getContentPane().add(jlBGPagamento);
        jlBGPagamento.setBounds(0, 0, 296, 325);

        getContentPane().add(ifPagamento);
        ifPagamento.setBounds(210, 0, 306, 360);

        tfCodigo.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        tfCodigo.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 2));
        tfCodigo.setMargin(new java.awt.Insets(2, 4, 2, 2));
        tfCodigo.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                tfCodigoKeyPressed(evt);
            }
        });
        getContentPane().add(tfCodigo);
        tfCodigo.setBounds(430, 58, 110, 30);

        tfNome.setEditable(false);
        tfNome.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        tfNome.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 2));
        tfNome.setPreferredSize(new java.awt.Dimension(6, 25));
        tfNome.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tfNomeActionPerformed(evt);
            }
        });
        getContentPane().add(tfNome);
        tfNome.setBounds(96, 58, 240, 30);

        tfPreco.setEditable(false);
        tfPreco.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        tfPreco.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 2));
        tfPreco.setMargin(new java.awt.Insets(2, 4, 2, 2));
        tfPreco.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tfPrecoActionPerformed(evt);
            }
        });
        getContentPane().add(tfPreco);
        tfPreco.setBounds(313, 105, 110, 30);

        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 2));
        jPanel1.setPreferredSize(new java.awt.Dimension(450, 152));

        tabelaServicos.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        jScrollPane1.setViewportView(tabelaServicos);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 446, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 146, Short.MAX_VALUE)
        );

        getContentPane().add(jPanel1);
        jPanel1.setBounds(60, 188, 450, 150);

        tfSubtotal.setEditable(false);
        tfSubtotal.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        tfSubtotal.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 2));
        tfSubtotal.setMargin(new java.awt.Insets(2, 4, 2, 2));
        getContentPane().add(tfSubtotal);
        tfSubtotal.setBounds(505, 105, 110, 30);

        btnAdd.setText("Add");
        btnAdd.setEnabled(false);
        btnAdd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAddActionPerformed(evt);
            }
        });
        getContentPane().add(btnAdd);
        btnAdd.setBounds(550, 60, 70, 30);

        tfTotal.setEditable(false);
        tfTotal.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        tfTotal.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 2));
        tfTotal.setMargin(new java.awt.Insets(2, 4, 2, 2));
        getContentPane().add(tfTotal);
        tfTotal.setBounds(505, 146, 110, 30);

        btnFinalizarVenda.setText("Finalizar Venda");
        btnFinalizarVenda.setEnabled(false);
        btnFinalizarVenda.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnFinalizarVendaActionPerformed(evt);
            }
        });
        getContentPane().add(btnFinalizarVenda);
        btnFinalizarVenda.setBounds(190, 20, 130, 30);

        btnCancelarVenda.setText("Cancelar Venda");
        btnCancelarVenda.setEnabled(false);
        btnCancelarVenda.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelarVendaActionPerformed(evt);
            }
        });
        getContentPane().add(btnCancelarVenda);
        btnCancelarVenda.setBounds(330, 20, 120, 30);

        jPanel2.setBackground(new java.awt.Color(0, 204, 204));

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel1.setText("Nome:");

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel2.setText("Produtos");

        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel3.setText("Sutotal:");

        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel4.setText("Pesquisa:");

        jLabel5.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel5.setText("Quantidade:");

        tfQtd.setFont(new java.awt.Font("Times New Roman", 1, 18)); // NOI18N
        tfQtd.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0), 2));
        tfQtd.setMargin(new java.awt.Insets(2, 4, 2, 2));
        tfQtd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tfQtdActionPerformed(evt);
            }
        });
        tfQtd.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                tfQtdKeyPressed(evt);
            }
        });

        jLabel6.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel6.setText("Preço:");

        jLabel7.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel7.setText("Código:");

        jLabel8.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel8.setText("Total:");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(57, 57, 57)
                        .addComponent(jLabel2))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(44, 44, 44)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(jLabel5)
                                .addGap(18, 18, 18)
                                .addComponent(tfQtd, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 67, Short.MAX_VALUE)
                                .addComponent(jLabel6)
                                .addGap(59, 59, 59)
                                .addComponent(jLabel4))
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(jLabel1)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(jLabel7)))))
                .addGap(28, 28, 28)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel3)
                    .addComponent(jLabel8))
                .addGap(194, 194, 194))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(64, 64, 64)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(jLabel7))
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(81, 81, 81)
                        .addComponent(jLabel2))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(26, 26, 26)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel4)
                            .addComponent(jLabel5)
                            .addComponent(tfQtd, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel3)
                            .addComponent(jLabel6))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jLabel8)))
                .addContainerGap(181, Short.MAX_VALUE))
        );

        getContentPane().add(jPanel2);
        jPanel2.setBounds(0, 0, 690, 360);

        MenuClientes1.setText("Novo produto");
        MenuClientes1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                MenuProdutoMouseClicked(evt);
            }
        });
        jMenuBar1.add(MenuClientes1);

        MenuCaixa.setText("Nova venda");
        MenuCaixa.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                MenuCaixaMouseClicked(evt);
            }
        });
        jMenuBar1.add(MenuCaixa);

        MenuSair.setText("Sair");
        MenuSair.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                MenuSairMouseClicked(evt);
            }
        });
        jMenuBar1.add(MenuSair);

        setJMenuBar(jMenuBar1);

        setSize(new java.awt.Dimension(703, 420));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void tfNomeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tfNomeActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_tfNomeActionPerformed

    private void tfQtdActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tfQtdActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_tfQtdActionPerformed

    private void btnAddActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAddActionPerformed
       
        try {
           
                String qtdItens = tfQtd.getText();
                String subTotal = tfSubtotal.getText();
                venda.adicionarProduto(produto, qtdItens, subTotal);
                venda.setSubTotal(venda.getSubTotal()
                        + (Integer.parseInt(tfQtd.getText()) * Float.parseFloat(tfPreco.getText())));
                tfTotal.setText(Float.toString(venda.getSubTotal()));
                btnAdd.setEnabled(false);
                preencherTabela(venda.getVendas());
                limparCampos();
                btnCancelarVenda.setEnabled(true);
                btnFinalizarVenda.setEnabled(true);
            
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "ERRO: Item não adicionado!");
        }
    }//GEN-LAST:event_btnAddActionPerformed

    private void tfQtdKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_tfQtdKeyPressed
        // TODO add your handling code here:
        try {
            if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
                String subTotal = Float.toString(Float.parseFloat(tfPreco.getText()) * Integer.parseInt(tfQtd.getText()));
                tfSubtotal.setText(subTotal);
            }
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Quantidade inválida!");
            tfQtd.setText("1");
        }
    }//GEN-LAST:event_tfQtdKeyPressed

    private void tfCodigoKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_tfCodigoKeyPressed
        // Verifica se a tecla enter foi pressionada
        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            String codigo = tfCodigo.getText();
            try {
                // Verifica se o primeiro numero do código digitado é 1(serviços) ou 2(produtos)
                switch (codigo.substring(0, 1)) {
        
                    case "2":
                        produto = produtoAux.pesquisar(codigo);
                        if (produto.getNome() != null) {
                            tfNome.setText(produto.getNome());
                            tfPreco.setText(Float.toString(produto.getPreco()));
                            tfQtd.setText("1");
                            tfSubtotal.setText(tfPreco.getText());
                            flag = 2;
                            btnAdd.setEnabled(true);
                        } else {
                            JOptionPane.showMessageDialog(null, "Produto não localizado!");
                            btnAdd.setEnabled(false);
                        }
                        break;
                    default:
                        JOptionPane.showMessageDialog(null, "Codigo Invalido!");
                        break;
                }
            } catch (StringIndexOutOfBoundsException e) {

            }
        }
    }//GEN-LAST:event_tfCodigoKeyPressed

    private void btnFinalizarVendaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnFinalizarVendaActionPerformed
        // TODO add your handling code here:
        int resultado = JOptionPane.showConfirmDialog(null, "Confirmar Finalização da venda?", "Finalizar Venda", JOptionPane.YES_NO_OPTION);
        if (resultado == JOptionPane.YES_OPTION) {
            tfTotalPag.setText(String.format("R$%.2f", Float.parseFloat(tfTotal.getText())));
            ifPagamento.setVisible(true);
        }
    }//GEN-LAST:event_btnFinalizarVendaActionPerformed

    private void tfDinheiroKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_tfDinheiroKeyPressed
        // TODO add your handling code here:
        try {
            if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
                float total = Float.parseFloat(tfTotal.getText());
                float dinheiro = Float.parseFloat(tfDinheiro.getText());
                if (dinheiro < total) {
                    JOptionPane.showMessageDialog(null, "Valor menor que o total da venda!");
                } else {
                    float troco = dinheiro - total;
                    tfTroco.setText(String.format("R$%.2f", troco));
                    btnConfirmar.setEnabled(true);
                }
            }
        } catch (NumberFormatException ex) {
            JOptionPane.showMessageDialog(null, "Valor de dinheiro inválido!");
        }
    }//GEN-LAST:event_tfDinheiroKeyPressed

    private void btnConfirmarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnConfirmarActionPerformed
        // TODO add your handling code here:
        venda = new GerenciadorDeVendas();
        limparCampos();
        preencherTabela(venda.getVendas());
        tfTotal.setText("0");
        JOptionPane.showMessageDialog(null, "Venda Finalizada.");
        ifPagamento.setVisible(false);
        btnFinalizarVenda.setEnabled(false);
        btnCancelarVenda.setEnabled(false);
    }//GEN-LAST:event_btnConfirmarActionPerformed

    private void btnCancelarVendaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelarVendaActionPerformed
        // TODO add your handling code here:
        int resultado = JOptionPane.showConfirmDialog(null, "Confirmar cancelamento da venda?", "Cancelar Venda", JOptionPane.YES_NO_OPTION);
        if (resultado == JOptionPane.YES_OPTION) {
            venda = new GerenciadorDeVendas();
            limparCampos();
            preencherTabela(venda.getVendas());
            tfTotal.setText("0");
            btnCancelarVenda.setEnabled(false);
            btnFinalizarVenda.setEnabled(false);
        }
    }//GEN-LAST:event_btnCancelarVendaActionPerformed

    private void tfPrecoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tfPrecoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_tfPrecoActionPerformed

    private void MenuProdutoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_MenuProdutoMouseClicked
        // TODO add your handling code here:
        CadastroProduto frm = new CadastroProduto();
        frm.setVisible(true);
        dispose();
    }//GEN-LAST:event_MenuProdutoMouseClicked

    private void MenuCaixaMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_MenuCaixaMouseClicked
        // TODO add your handling code here:
        Venda frm = new Venda();
        frm.setVisible(true);
        dispose();
    }//GEN-LAST:event_MenuCaixaMouseClicked

    private void MenuSairMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_MenuSairMouseClicked
        // TODO add your handling code here:
        dispose();
    }//GEN-LAST:event_MenuSairMouseClicked

    // Metodo para limpar campos de texto
    public void limparCampos() {
        tfNome.setText("");
        tfPreco.setText("");
        tfCodigo.setText("");
        tfQtd.setText("");
        tfSubtotal.setText("");
        tfDinheiro.setText("");
        tfTroco.setText("");
    }

    // Metodo para preencher tabela de servicos
    public void preencherTabela(ArrayList<Modelos.Venda> comanda) {
        ArrayList dados = new ArrayList();

        // Define o nome de cada coluna
        String[] Colunas = new String[]{"Cód", "Nome", "Vl Uni", "Qtd", "Total"};

        // Percorre a lista de produtos na comanda
        for (Modelos.Venda produto : comanda) {
            dados.add(new Object[]{produto.getCodigo(), produto.getNome(),
                produto.getPreco(), produto.getQtdItens(), produto.getTotal()});
        }

        // Cria um modelo da tabela
        Tabela modelo = new Tabela(dados, Colunas);

        /*
        Define a tabela de acordo com o modelo passado
        Seta os paramêtros da tabela(tamanho das colunas)
        Não é permitido ao usuario modificar ordem das colunas
        As colunas se redimensionam para preencher o espaço reservado
        Apenas um item selecionado por vez
         */
        tabelaServicos.setModel(modelo);
        tabelaServicos.getColumnModel().getColumn(0).setPreferredWidth(40);
        tabelaServicos.getColumnModel().getColumn(1).setPreferredWidth(245);
        tabelaServicos.getColumnModel().getColumn(2).setPreferredWidth(60);
        tabelaServicos.getColumnModel().getColumn(3).setPreferredWidth(35);
        tabelaServicos.getColumnModel().getColumn(4).setPreferredWidth(60);
        tabelaServicos.getTableHeader().setReorderingAllowed(false);
        tabelaServicos.setAutoResizeMode(tabelaServicos.AUTO_RESIZE_OFF);
        tabelaServicos.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        jScrollPane1.getVerticalScrollBar().setValue(tabelaServicos.getHeight());

    }

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Venda.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Venda.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Venda.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Venda.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Venda().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JMenu MenuCaixa;
    private javax.swing.JMenu MenuClientes1;
    private javax.swing.JMenu MenuSair;
    private javax.swing.JButton btnAdd;
    private javax.swing.JButton btnCancelarVenda;
    private javax.swing.JButton btnConfirmar;
    private javax.swing.JButton btnFinalizarVenda;
    private javax.swing.JInternalFrame ifPagamento;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel jlBGPagamento;
    private javax.swing.JTable tabelaServicos;
    private javax.swing.JTextField tfCodigo;
    private javax.swing.JTextField tfDinheiro;
    private javax.swing.JTextField tfNome;
    private javax.swing.JTextField tfPreco;
    private javax.swing.JTextField tfQtd;
    private javax.swing.JTextField tfSubtotal;
    private javax.swing.JTextField tfTotal;
    private javax.swing.JTextField tfTotalPag;
    private javax.swing.JTextField tfTroco;
    // End of variables declaration//GEN-END:variables
}
