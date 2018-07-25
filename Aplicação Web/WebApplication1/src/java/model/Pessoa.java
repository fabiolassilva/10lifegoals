/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
        
/**
 *
 * @author Beatriz Guimarães
 */
@Entity 
public class Pessoa implements java.io.Serializable {
    
    private String usuario;
    private String nome;
    private String senha;
    private String termos;
    private String email;
    @Temporal(TemporalType.DATE)
    private Date dataNasc;

    public Pessoa(){
    }
    
    public Pessoa(String usuario, String nome, String senha, String termos, String email) {
        this.usuario = usuario;
        this.nome = nome;
        this.senha = senha;
        this.termos = termos;
        this.email = email;
    }

    @Id
    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getTermos() {
        return termos;
    }

    public void setTermos(String termos) {
        this.termos = termos;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDataNasc() {
        return dataNasc;
    }

    public void setDataNasc(Date dataNasc) {
        this.dataNasc = dataNasc;
    }
   
  
}
