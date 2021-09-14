/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.newman.entidade;


/**
 *
 * @author Eduardo Silva
 */

public class Produto{
    private int id_produto;
    private String nome;
    private String marca;
    private String tamanho;        
    private String descricao;
    private String tag;
    private int quantidade;    
    private double v_compra;
    private double v_venda;
    private String status;
    
    public Produto(int id_produto, String nome, String marca, String tamanho, String descricao, String tag, int quantidade, double v_compra, double v_venda, String status) {
        this.id_produto = id_produto;
        this.nome = nome;
        this.marca = marca;
        this.tamanho = tamanho;
        this.descricao = descricao;
        this.tag = tag;
        this.quantidade = quantidade;
        this.v_compra = v_compra;
        this.v_venda = v_venda;
        this.status = status;
    }

    public int getId_produto() {
        return id_produto;
    }

    public void setId_produto(int id_produto) {
        this.id_produto = id_produto;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getTamanho() {
        return tamanho;
    }

    public void setTamanho(String tamanho) {
        this.tamanho = tamanho;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public double getV_compra() {
        return v_compra;
    }

    public void setV_compra(double v_compra) {
        this.v_compra = v_compra;
    }

    public double getV_venda() {
        return v_venda;
    }

    public void setV_venda(double v_venda) {
        this.v_venda = v_venda;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
    public boolean validarPrecoUnit() {
        return true;
    }

    @Override
    public String toString() {
        return String.format("id: %d <br/> Nome: %s <br/> Marca: %s <br/> Tamanho: %s <br/>"
                + " Descricao: %s <br/> Tag: %s <br/> Qtd: %d <br/> Valor de Compra: %f <br/>"
                + "Valor de Venda: %f <br/> Status: %s", 
                id_produto, nome, marca, tamanho, descricao, tag, quantidade, v_compra, v_venda, status);
    }
}
