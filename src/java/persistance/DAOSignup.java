/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistance;

import java.util.List;
import model.Subscriber;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author Mohamed
 */
public class DAOSignup {

    private Session session;
    private Transaction tx;
    private Query query;
    public static String query_subscriber = "from Subscriber s where s.name like '";
    public DAOSignup() {

        session = HibernateUtil.currentSession();
    }


    public void insertSignupData(Subscriber subscriber) {

        try {
            session.getTransaction().begin();
            session.saveOrUpdate(subscriber);
            session.getTransaction().commit();

        } catch (RuntimeException e) {

            session.getTransaction().rollback();

        } 

        

    }
    
    //To have differents activities queries
    public List executeHQLQueryActivity(String username) {

        String requete = query_subscriber + username + "%'";

        query = session.createQuery(requete);

        List resultat = query.list();


        return resultat;

    }
}
