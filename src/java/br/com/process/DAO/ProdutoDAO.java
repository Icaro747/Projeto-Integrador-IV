package br.com.process.DAO;

import br.com.process.conexao.Conexao;
import br.com.process.entidade.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Icaro
 */
public class ProdutoDAO {
    
    public static boolean cadastrar(Produto produto){
        boolean ok = true;
        String query = "insert into Produtos (nome, marca, tamanho, descricao, tag, quantidade, v_compra, v_venda, status) values (?,?,?,?,?,?,?,?,?)";
        Connection con;
        try {
            con = Conexao.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, produto.getNome());
            ps.setString(2, produto.getMarca());
            ps.setString(3, produto.getTamanho());
            ps.setString(4, produto.getDescricao());
            ps.setString(5, produto.getTag());
            ps.setInt(6, produto.getQuantidade());
            ps.setDouble(7, produto.getV_compra());
            ps.setDouble(8, produto.getV_venda());
            ps.setString(9, produto.getStatus());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }
        return ok;        
    } 
    
    public static List<Produto> getProdutos() {
        List<Produto> produtos = new ArrayList<>();
        String query = "select * from Produtos";
        Connection con;
        try {
            con = Conexao.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                int id_produto = rs.getInt("id_produto");
                String nome = rs.getString("nome");
                String marca = rs.getString("marca");
                String tamanho = rs.getString("tamanho");
                String descricao = rs.getString("descricao");
                String tag = rs.getString("tag");
                int quantidade = rs.getInt("quantidade");
                double v_compra  = rs.getDouble("v_compra");
                double v_venda  = rs.getDouble("v_venda");
                String status = rs.getString("status");
                
                Produto produto = new Produto(id_produto, nome, marca, tamanho, descricao, tag, quantidade, v_compra, v_venda, status);
                produtos.add(produto);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return produtos;
    }

    public static Produto getProduto(int id_produto) {
        Produto produto = null;
        String query = "select * from Produtos where id_produto=?";
        Connection con;
        try {
            con = Conexao.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id_produto);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                String nome = rs.getString("nome");                
                String marca = rs.getString("marca");
                String tamanho = rs.getString("tamanho");
                String descricao = rs.getString("descricao");                
                String tag = rs.getString("tag");                                
                int quantidade = rs.getInt("quantidade");
                double v_compra = rs.getDouble("v_compra");
                double v_venda = rs.getDouble("v_venda");
                String status = rs.getString("status");
                produto = new Produto(id_produto, nome, marca, tamanho, descricao, tag, quantidade, v_compra, v_venda, status);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return produto;
    }   

    public static boolean inativar(int id_produto) {
        boolean ok = true;
        String query = "update Produtos set status='Inativo' where id_produto=?";
        Connection con;
        try {
            con = Conexao.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, id_produto);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }
        return ok;
    }   
    

    public static boolean atualizar(Produto produto) {
        boolean ok = true;
        String query = "update Produtos set nome=?, marca=?, tamanho=?, descricao=?, tag=?, quantidade=?, v_compra=?, v_venda=?, status=?"
                + " where id_produto=?";
        Connection con;
        try {
            con = Conexao.getConexao();
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, produto.getNome());
            ps.setString(2, produto.getMarca());
            ps.setString(3, produto.getTamanho());
            ps.setString(4, produto.getDescricao());            
            ps.setString(5, produto.getTag());            
            ps.setInt(6, produto.getQuantidade());
            ps.setDouble(7, produto.getV_compra());
            ps.setDouble(8, produto.getV_venda());
            ps.setString(9, produto.getStatus());
            ps.setInt(10, produto.getId_produto());           
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }
        return ok;
    }    
}
