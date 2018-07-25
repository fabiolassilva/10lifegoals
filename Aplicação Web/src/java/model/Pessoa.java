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
    //String diaNasc, mesNasc,  anoNasc;
    
    @Id
    private String usuario;
    private String nome;
    private String senha;
    private String termos;
    private String email;
    private String bio;
    boolean achou;
    //private String dataNasc;
        
    public boolean getAchou() {
        return achou;
    }

    public void setAchou(boolean achou) {
        this.achou = achou;
    }
    public Pessoa(){
    }
    
    public Pessoa(String usuario, String nome, String senha, String termos, String email) {
        this.usuario = usuario;
        this.nome = nome;
        this.senha = senha;
        this.termos = termos;
        this.email = email;
    }
    
    
    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }
    
    
    
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

/*    public String getNascimento(){
        return diaNasc + "-" + mesNasc+ "-" + anoNasc + "";
    }
    
    public void setNascimento(String diaNasc, String mesNasc, String anoNasc){
        this.diaNasc = diaNasc;
        this.mesNasc = mesNasc;
        this.anoNasc = anoNasc;
    }
   
    public void setDataNasc(String data){
        this.dataNasc = data;
    }
    
    public String getDataNasc(){
        return dataNasc;
    }
   
    */
}
