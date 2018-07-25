/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Meta;
import org.hibernate.HibernateException;
import org.hibernate.Session;

/**
 *
 * @author BEATRIZ GUIMARÃES
 */
public class MetaDao {

    private final Session sessao;
    private HibernateSessionFactory factory;

    public void salvar(Meta m) {

        try {
            sessao.beginTransaction();

            sessao.save(m);

            sessao.flush();//libera a memoria
            sessao.clear();
            sessao.getTransaction().commit();//manda pro bd

            sessao.close();

        } catch (HibernateException e) {
            e.printStackTrace();
        }
    }

    public MetaDao() {
        sessao = HibernateSessionFactory.getSessao().openSession();
    }
     
    
}
