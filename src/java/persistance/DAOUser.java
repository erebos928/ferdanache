/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistance;

import java.util.List;
import model.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author Mohamed
 */
public class DAOUser {

    private Session session;
    private Transaction tx;
    private Query query;
    public static String query_user = "from User u where u.email = '";
    public DAOUser() {

        session = HibernateUtil.currentSession();
    }


    public void insertSignupData(User user) {

        try {
            session.getTransaction().begin();
            session.saveOrUpdate(user);
            session.getTransaction().commit();

        } catch (RuntimeException e) {
            e.printStackTrace();
            session.getTransaction().rollback();

        } 

        

    }
    
    //To have differents activities queries
    public List<User> executeHQLQueryUser(String email) {

        String requete = query_user + email + "'";

        query = session.createQuery(requete);
        
        List resultat = query.list();


        return resultat;

    }
}
