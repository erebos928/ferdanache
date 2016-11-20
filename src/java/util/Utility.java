/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import model.Activite;
import model.Creneau;
import model.Horaire;
import model.Participant;
import model.Salle;

/**
 *
 * @author Mohamed
 */
public class Utility {

    private static List<Horaire> listHoraire = new ArrayList<Horaire>();
    private static List<Creneau> listCreneau = new ArrayList<Creneau>();
    private static List<Activite> listActivity = new ArrayList<Activite>();
    private static List<Salle> listSalle = new ArrayList<Salle>();
    private  static Set<String> categoryList = new TreeSet<String>();
    //private Set<String> categoryList1 = new TreeSet<String>();
    private ArrayList<String> categoryNames=new ArrayList<String>();

    public Utility() {
        
//        categoryNames.add("Volleyball");
//        categoryNames.add("Karate");
//        categoryNames.add("Danse");
//        categoryNames.add("Spa");
//        categoryNames.add("Yoga");
//        categoryNames.add("Jeux d'echec");
//        categoryNames.add("Gymnastique");        
        //categoryList1=getCategoryList();
        
    }
    
    
    
    //To built all lists
    public static void builtAllList(List list) {
   
        for (Object obj:list) {
            Object object[] = (Object[]) obj;
            Horaire horaire =(Horaire)object[0];
            getListHoraire().add(horaire);         
            Activite activite = (Activite)object[1];
            getListActivity().add(activite);
            categoryList.add(activite.getCategorie().toUpperCase());
                
            System.out.println("Info:  " + horaire.getId().getHdate().toString());

        }
        
        
        
        
//      System.out.println("Horaire"+ listHoraire.size());
//      System.out.println("Activity"+ listActivity.size());
//      System.out.println("Creneau"+ listCreneau.size());
//      System.out.println("salle"+ listSalle.size());
    }
    

    public Set<String> getCategoryList() {
        return categoryList;
    }

    

    /**
     * @return the listHoraire
     */
    public static List<Horaire> getListHoraire() {
        return listHoraire;
    }

    /**
     * @param aListHoraire the listHoraire to set
     */
    public static void setListHoraire(List<Horaire> aListHoraire) {
        listHoraire = aListHoraire;
    }

    /**
     * @return the listCreneau
     */
    public static List<Creneau> getListCreneau() {
        return listCreneau;
    }

    /**
     * @param aListCreneau the listCreneau to set
     */
    public static void setListCreneau(List<Creneau> aListCreneau) {
        listCreneau = aListCreneau;
    }

    /**
     * @return the listActivity
     */
    public static List<Activite> getListActivity() {
        return listActivity;
    }

    /**
     * @param aListActivity the listActivity to set
     */
    public static void setListActivity(List<Activite> aListActivity) {
        listActivity = aListActivity;
    }

    /**
     * @return the listSalle
     */
    public static List<Salle> getListSalle() {
        return listSalle;
    }

    /**
     * @param aListSalle the listSalle to set
     */
    public static void setListSalle(List<Salle> aListSalle) {
        listSalle = aListSalle;
    }
    
    
    public static boolean equals(String l1,String l2) {
        return l1.equalsIgnoreCase(l2);
    }

    /**
     * @return the categoryNames
     */
    public ArrayList<String> getCategoryNames() {
        return categoryNames;
    }

    /**
     * @param categoryNames the categoryNames to set
     */
    public void setCategoryNames(ArrayList<String> categoryNames) {
        this.categoryNames = categoryNames;
    }

    /**
     * @return the categoryList1
     */
//    public Set<String> getCategoryList1() {
//        return categoryList1;
//    }
//
//    /**
//     * @param categoryList1 the categoryList1 to set
//     */
//    public void setCategoryList1(Set<String> categoryList1) {
//        this.categoryList1 = categoryList1;
//    }
    
    
    public static Participant getSubscriber(String nom, String prenom, String adresse, String email, String tel, 
            String date, String Creneau){
        
        Activite activity =getActivity(date,Creneau);
        Participant subscriber = new Participant();
        
        subscriber.setNom(nom);
        subscriber.setPrenom(prenom);
        subscriber.setAdresse(adresse);
        subscriber.setTel(tel);
        subscriber.setEmail(email);
        subscriber.setActivite(activity);
        
        return subscriber;
    }
    
    private static Activite getActivity(String date, String Creneau){
        
        for(Horaire horaire:listHoraire){
            if(horaire.getId().getHdate().toString().equalsIgnoreCase(date)&& horaire.getCreneau().getHeureDebut().equalsIgnoreCase(Creneau)){
                return horaire.getActivite();
            }
        }
        return null;
    }
    

}
