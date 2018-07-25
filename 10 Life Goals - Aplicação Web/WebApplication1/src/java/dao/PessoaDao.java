/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import model.Pessoa;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author BEATRIZ GUIMARÃES
 */
public class PessoaDao {

    private final Session sessao;
    private HibernateSessionFactory factory;

    public void salvar(Pessoa p) {
            
        try {
            sessao.beginTransaction();

            sessao.save(p);

            sessao.flush();//libera a memoria
            sessao.clear();
            sessao.getTransaction().commit();//manda pro bd

            sessao.close();

        } catch (HibernateException e) {
            e.printStackTrace();
        }
    }

    public PessoaDao() {
        sessao = HibernateSessionFactory.getSessao().openSession();
    }
    
    public Pessoa login(String usuario){
         Pessoa p;
         sessao.beginTransaction();
        
         p = (Pessoa) sessao.get(Pessoa.class,usuario);

         sessao.flush();//libera a memoria
         sessao.clear();
         sessao.getTransaction().commit();//manda pro bd

         sessao.close();
        return p;
        
    }
    public ArrayList<Pessoa> listar() {
        sessao.beginTransaction();
        Query query =  sessao.createQuery("from Pessoa");
        List<Pessoa> list = new ArrayList<>();
        ArrayList<Pessoa> pessoa = new ArrayList<Pessoa>();
        pessoa = (ArrayList<Pessoa>) query.list();
        sessao.close();
        return pessoa;
    }
    
    public ArrayList<Pessoa> listarFiltro(String filtro) {
        sessao.beginTransaction();
        Query query =  sessao.createQuery("from Pessoa p where p.usuario like:filtro");
        query.setString("filtro", filtro);
        List<Pessoa> list = new ArrayList<>();
        ArrayList<Pessoa> pessoa = new ArrayList<Pessoa>();
        pessoa = (ArrayList<Pessoa>) query.list();
        sessao.close();
        return pessoa;
    }
}
