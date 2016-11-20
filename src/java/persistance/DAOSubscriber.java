/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistance;

import java.util.List;
import model.Participant;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author Mohamed
 */
public class DAOSubscriber {

    private Session session;
    private Transaction tx;
    private Query query;
    public static String query_activity = "from Horaire h where h.activite.categorie like '";
    public DAOSubscriber() {

        session = HibernateUtil.currentSession();
    }

    //To get all the activities with their corresponding schedule and locals
    public List getActivtyInformations() {

        String requete = "from Horaire h join h.activite";
        query = session.createQuery(requete);

        List<Object[]> activitiesInfo = query.list();

        return activitiesInfo;

    }

    public void insertParticipantData(Participant subscriber) {

        try {
            session.getTransaction().begin();
            session.saveOrUpdate(subscriber);
            session.getTransaction().commit();

        } catch (RuntimeException e) {

            session.getTransaction().rollback();

        } 

        

    }
    
    //To have differents activities queries
    public List executeHQLQueryActivity(String activite) {

        String requete = query_activity + activite + "%'";

        query = session.createQuery(requete);

        List resultat = query.list();


        return resultat;

    }
}
