/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dao.HibernateSessionFactory;
import java.util.ArrayList;
import model.PessoaSalvaMeta;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author BEATRIZ GUIMARÃES
 */
public class SalvaDao {
     private final Session sessao;
    private HibernateSessionFactory factory;

    public void salvar(PessoaSalvaMeta p) {
            
        try {
            sessao.beginTransaction();

            sessao.save(p);

            sessao.flush();//libera a memoria
            sessao.clear();
            sessao.getTransaction().commit();//manda pro bd

            sessao.close();

        } catch (HibernateException e) {
        }
    }

    public SalvaDao() {
        sessao = HibernateSessionFactory.getSessao().openSession();
    }
    
    
    public ArrayList<PessoaSalvaMeta> listar(String usuario) {
        ArrayList<PessoaSalvaMeta> metasalvas;
        sessao.beginTransaction();
        Query query =  sessao.createQuery("from PessoaSalvaMeta where usuarioLogado=? ");
        metasalvas = (ArrayList<PessoaSalvaMeta>) query.setString(0,usuario).list();
        
        sessao.close();
        return metasalvas;
    }
    
    public ArrayList<PessoaSalvaMeta> listarTop() {
        ArrayList<PessoaSalvaMeta> metas;
        sessao.beginTransaction();
        Query query =  sessao.createQuery("FROM PessoaSalvaMeta GROUP BY descrMeta HAVING COUNT(*)>1 ");
        metas = (ArrayList<PessoaSalvaMeta>) query.list();
        sessao.close();
        return metas;
    }
}
