package util;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import java.util.Iterator;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    
    // Database configuration
//     public static String url = "jdbc:oracle:thin:@oracleadudb1.bdeb.qc.ca:1521:GDNA10";
////     Preferences dataBasePrefs = prefs.node("database");
////    String s1 = = dataBasePrefs.get("connection.username", "");
//    public static String dbdriver = "oracle.jdbc.OracleDriver";
//    public static String username = "hben";
//    public static String password = "koob2601";
//    
    public static final SessionFactory sessionFactory;
    
    static {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            sessionFactory = new Configuration().configure().buildSessionFactory();
//            System.out.println("Here is the conn name:"+s1);
        } catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    
    public static final ThreadLocal session = new ThreadLocal();
    
    public static Session currentSession() throws HibernateException {
        Session s = (Session) session.get();
        // Open a new Session, if this thread has none yet
        if (s == null) {
            s = sessionFactory.openSession();
            // Store it in the ThreadLocal variable
            session.set(s);
        }
        return s;
    }
    
    public static void closeSession() throws HibernateException {
        Session s = (Session) session.get();
        if (s != null)
            s.close();
        session.set(null);
    }
    
    static Connection conn;
    static Statement st;
    
//    public static void setup(String sql) {
//        try {
//            createStatement();
//            st.executeUpdate(sql);
//        } catch (Exception e) {
//            System.err.println("Got an exception! ");
//            e.printStackTrace();
//            System.exit(0);
//        }
//    }
    
//    public static void createStatement() {
//        try {
//            Class.forName(dbdriver);
//            conn = DriverManager.getConnection(url, username, password);
//            st = conn.createStatement();
//        } catch (Exception e) {
//            System.err.println("Got an exception! ");
//            e.printStackTrace();
//            System.exit(0);
//        }
//    }
    
    // Drop table if exists
//    public static void droptable(String sql) {
//        try {
//            createStatement();
//            st.executeUpdate(sql);
//        } catch (Exception e) {
//        }
//    }
    
//    public static void checkData(String sql) {
//        String[] starray = sql.split(" ");
//        System.out.println("\n******** Table: " + starray[starray.length-1]  + " *******");
//        try {
//            createStatement();
//            ResultSet r = st.executeQuery(sql);
//            HibernateUtil.outputResultSet(r);
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }

    public static void afficheData(Object listing){
        System.out.println(((List)listing).size() + " enregistrements(s) trouv�s:");
        Iterator iter = ((List)listing).iterator();
        while ( iter.hasNext()) {
//            List perTemp = (List) iter.next();
            System.out.println(iter.next());
        }
    }


    
}