/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Beatriz Guimarães
 */ 
@Entity
public class Meta implements java.io.Serializable{
    
    private int numero;
    private char publico;
    private int periodo;
    private char situacao;
    private String usuarioCria;
    private String descricao;

    public Meta() {
    }
    
    public Meta(int numero, char publico, int periodo, char situacao, String usuarioCria, String descricao) {
        this.numero = numero;
        this.publico = publico;
        this.periodo = periodo;
        this.situacao = situacao;
        this.usuarioCria = usuarioCria;
        this.descricao = descricao;
    }
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public char getPublico() {
        return publico;
    }

    public void setPublico(char publico) {
        this.publico = publico;
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

    public String getUsuarioCria() {
        return usuarioCria;
    }

    public void setUsuarioCria(String usuarioCria) {
        this.usuarioCria = usuarioCria;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    
}
