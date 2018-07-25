/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dao.HibernateSessionFactory;
import java.util.ArrayList;
import java.util.List;
import model.Pessoa;
import model.PessoaComentaMeta;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author BRUNA MARIANA
 */
public class ComentaDao {
    private final Session sessao;
    private HibernateSessionFactory factory;

        
    public ComentaDao() {
        sessao = HibernateSessionFactory.getSessao().openSession();
    
    }
    
    public void salvar(PessoaComentaMeta p) {
        try {
            
            sessao.beginTransaction();
            System.out.println("entrou no try de salvar");
            sessao.save(p);

            sessao.flush();//libera a memoria
            sessao.clear();
            sessao.getTransaction().commit();//manda pro bd

            sessao.close();
            
            p.setAlgo(true);

        } catch (HibernateException e) {
            e.printStackTrace();
        }
    }
    
    public boolean temAlgo(){
        ArrayList<PessoaComentaMeta> coment;
        sessao.beginTransaction();
        Query query =  sessao.createQuery("from PessoaComentaMeta");
        coment = (ArrayList<PessoaComentaMeta>) query.list();
        if(coment!=null && !coment.isEmpty()){
            return true;
        }else{
            return false;
        }
               
    } 
    
    
    public ArrayList<PessoaComentaMeta> listar() {
        Query query =  sessao.createQuery("from PessoaComentaMeta");
        List<Pessoa> list = new ArrayList<>();
        ArrayList<PessoaComentaMeta> pessoa = new ArrayList<PessoaComentaMeta>();
        pessoa = (ArrayList<PessoaComentaMeta>) query.list();
        return pessoa;
    }
    
    public ArrayList<PessoaComentaMeta> listarFiltro(int num) {
        System.out.println("entrou no listar");
        Query query =  sessao.createQuery("from PessoaComentaMeta where numMeta= :num");
        query.setInteger("num", num);
        List<Pessoa> list = new ArrayList<>();
        ArrayList<PessoaComentaMeta> comentario = new ArrayList<PessoaComentaMeta>();
        comentario = (ArrayList<PessoaComentaMeta>) query.list();
        return comentario;
    }
}
