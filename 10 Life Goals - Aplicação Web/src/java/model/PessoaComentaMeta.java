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
 * @author BRUNA MARIANA
 */
@Entity
public class PessoaComentaMeta implements java.io.Serializable{
    @Column
    String comentario;
    @Column
    String usuarioLogado;
    @Column
    private int numMeta;
    private boolean algo;

    public boolean isAlgo() {
        return algo;
    }

    public void setAlgo(boolean algo) {
        this.algo = algo;
    }
    
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    int id;

    public PessoaComentaMeta() {
    }

    public PessoaComentaMeta(String comentario, String usuarioLogado, int numMeta) {
        System.out.println("entro no contrutor");
        this.comentario = comentario;
        this.usuarioLogado = usuarioLogado;
        this.numMeta = numMeta;
    }
    
    public int getNumMeta() {
        return numMeta;
    }

    public void setNumMeta(int numMeta) {
        this.numMeta = numMeta;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public String getUsuarioLogado() {
        return usuarioLogado;
    }

    public void setUsuarioLogado(String usuarioLogado) {
        this.usuarioLogado = usuarioLogado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
}
