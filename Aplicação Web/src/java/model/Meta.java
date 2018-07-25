/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import model.Pessoa;

/**
 *
 * @author Beatriz Guimarães
 */
@Entity
public class Meta implements java.io.Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    int numero;
    @Column
    String descricao;
    @Column
    String publica;
    @Column
    int periodo;

    public int getData() {
        return data;
    }

    public void setData(int data) {
        this.data = data;
    }
    @Column
    char situacao;
    @ManyToOne
    private Pessoa pessoa;
    int data;
    
    public Meta() {
    }

    public Meta(String publica, int periodo, char situacao,String descricao, Pessoa pessoa) {
        
        this.descricao = descricao;
        this.publica = publica;
        this.periodo = periodo;
        this.situacao = situacao;
        this.pessoa = pessoa;
    }

   

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getPublica() {
        return publica;
    }

    public void setPublica(String publica) {
        this.publica = publica;
    }

    public int getPeriodo() {
        return periodo;
    }

    public void setPeriodo(int periodo) {
        this.periodo = periodo;
    }

    public char getSituacao() {
        return situacao;
    }

    public void setSituacao(char situacao) {
        this.situacao = situacao;
    }

    public Pessoa getPessoa() {
        return pessoa;
    }

    public void setPessoa(Pessoa pessoa) {
        this.pessoa = pessoa;
    }
   

}
