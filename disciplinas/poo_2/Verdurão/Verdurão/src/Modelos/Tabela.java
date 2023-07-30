
package Modelos;

import java.util.ArrayList;
import javax.swing.table.AbstractTableModel;
/**
 *
 * @author paula
 */
public class Tabela extends AbstractTableModel{
    // Atributos
    private ArrayList linhas = null;
    private String[] colunas = null;
    
    // Construtor
    public Tabela(ArrayList lin, String[] col) {
        setLinhas(lin);
        setColunas(col);
    }
    
    // Metodos Especiais //
    
    public ArrayList getLinhas(){
        return linhas;
    }
    public void setLinhas(ArrayList dados){
        linhas = dados;
    }
    
    public String[] getColunas(){
        return colunas;
    }
    public void setColunas(String[] nomes){
        colunas = nomes;
    }
    
    // Retorna o numero de colunas da tabela
    public int getColumnCount(){
        return colunas.length;
    }
    
    // Retorna o numero de linhas da tabela
    public int getRowCount(){
        return linhas.size();
    }
    
    // Retorna o nome da coluna da tabela
    public String getColumnName(int numCol){
        return colunas[numCol];
    }
    
    // Metodo que retorna o conteudo da linha e coluna passadas
    public Object getValueAt(int numLin, int numCol){
        Object[] linha = (Object[]) getLinhas().get(numLin);
        return linha[numCol];
    }
}
