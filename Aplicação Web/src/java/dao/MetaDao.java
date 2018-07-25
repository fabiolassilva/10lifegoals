package dao;

import dao.HibernateSessionFactory;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Meta;
import org.hibernate.HibernateException;
//import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.Query;

/**
 *
 * @author beatriz guimaraes
 */
public class MetaDao {

    private Session sessao;
    private HibernateSessionFactory factory;
   private ResultSet rs;
    public void salvar(Meta m) {
        try {

            sessao = HibernateSessionFactory.getSessao().openSession();
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
    

    /*public void atualizar(Meta meta) {
        sessao = HibernateSessionFactory.getSessao().openSession();
        try {
            sessao.beginTransaction();

            sessao.update(meta);

            sessao.flush();//libera a memoria
            sessao.clear();
            sessao.getTransaction().commit();//manda pro bd

            sessao.close();

        } catch (HibernateException e) {
            e.printStackTrace();
        }
    }

    public void delete(Meta meta) {
        sessao = HibernateSessionFactory.getSessao().openSession();
        try {
            sessao.beginTransaction();

            sessao.delete(meta);

            sessao.flush();//libera a memoria
            sessao.clear();
            sessao.getTransaction().commit();//manda pro bd

            sessao.close();

        } catch (HibernateException e) {
            e.printStackTrace();
        }
    }
*/
    /*public List listar(String usuario) {
        sessao.beginTransaction();
        Query query = (Query) sessao.createQuery("from meta where usuario=:usuario");
        query.setParameter("usuario", usuario);
        List<Meta> list;
        list = query.getResultList();
        sessao.getTransaction().commit();
        sessao.close();
        return list;
    }*/
    
    public void altera(Meta meta) {
        try {
            
            sessao = HibernateSessionFactory.getSessao().openSession();
            sessao.beginTransaction();

            sessao.update(meta);

            sessao.flush();//libera a memoria
            sessao.clear();
            sessao.getTransaction().commit();//manda pro bd

            //sessao.close();

        } catch (HibernateException e) {
            System.out.println("erro no update");
            e.printStackTrace();
        }
    }
    
    public ArrayList<Meta> lista(String usuario) {
        ArrayList<Meta> metas;
        sessao.beginTransaction();
        Query query =  sessao.createQuery("from Meta where pessoa_usuario =? ");
        metas = (ArrayList<Meta>) query.setString(0,usuario).list();
        
        sessao.close();
        return metas;
    }
    
    public ArrayList<Meta> listarPerfil(String usuario) {
        ArrayList<Meta> metas;
        sessao.beginTransaction();
        Query query =  sessao.createQuery("from Meta where pessoa_usuario =? and publica='s' ");
        metas = (ArrayList<Meta>) query.setString(0,usuario).list();
        
        sessao.close();
        return metas;
    }
    
    public ArrayList<Meta> listaConclui(String usuario) {
        ArrayList<Meta> metas;
        sessao.beginTransaction();
        Query query =  sessao.createQuery("from Meta where pessoa_usuario =? and situacao='s' ");
        metas = (ArrayList<Meta>) query.setString(0,usuario).list();
        
        sessao.close();
        return metas;
    }
    
    public ArrayList<Meta> listarInicio(String usuario) {
        ArrayList<Meta> metas;
        sessao.beginTransaction();
        Query query =  sessao.createQuery("FROM Meta WHERE publica='s' AND pessoa_usuario!=? ORDER BY RAND() LIMIT 20 ");
        metas = (ArrayList<Meta>) query.setString(0,usuario).list();
        sessao.close();
        return metas;
    }

    public Meta buscar(int numero) {
        sessao.beginTransaction();
        Query query = sessao.createQuery("from Meta m where m.numero =:numero");
        Meta m;
        query.setInteger("numero", numero);
        m = (Meta) query.uniqueResult();
        sessao.close();
        return m;
    }
}
