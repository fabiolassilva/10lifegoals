/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author BEATRIZ GUIMARÃES
 */
@Entity
public class PessoaSalvaMeta implements Serializable {

        @Id
        @GeneratedValue(strategy = GenerationType.AUTO)
        private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
        private String usuarioLogado;
        private String usuarioCriador;
        private String descrMeta;
    
    public PessoaSalvaMeta(String usuarioLogado, String usuarioCriador, String descrMeta) {
        this.usuarioLogado = usuarioLogado;
        this.usuarioCriador = usuarioCriador;
        this.descrMeta = descrMeta;
    }

    public PessoaSalvaMeta() {
    }

    public String getUsuarioCriador() {
        return usuarioCriador;
    }

    public void setUsuarioCriador(String usuarioCriador) {
        this.usuarioCriador = usuarioCriador;
    }

    public String getDescrMeta() {
        return descrMeta;
    }

    public void setDescrMeta(String descrMeta) {
        this.descrMeta = descrMeta;
    }
    

    public String getUsuarioLogado() {
        return usuarioLogado;
    }

    public void setUsuarioLogado(String usuarioLogado) {
        this.usuarioLogado = usuarioLogado;
    }
}
