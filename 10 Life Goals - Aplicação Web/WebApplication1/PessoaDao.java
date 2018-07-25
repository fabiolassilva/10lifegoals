/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import javax.jms.Session;
import javax.security.auth.login.Configuration;
import org.hibernate.SessionFactory;
import model.Pessoa;
/**
 *
 * @author BEATRIZ GUIMARÃES
 */
public class PessoaDao {
    //colocar o hibernate.cgf dentro da pasta dao
    public static void main(String[] args){
     
     Pessoa pessoa = new Pessoa();
     //fazer os sets com o que ele entrou 
        
        
    SessionFactory factory = new Configuration().configure().buildSessionFactory();
    Session sessao = factory.openSession();
    sessao.beginTransaction();
    sessao.save(usuario);
    
    sessao.getTransaction().commit();
    sessao.close();
            }
}
