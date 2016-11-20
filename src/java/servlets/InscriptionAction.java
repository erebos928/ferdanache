/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Activite;
import model.Horaire;
import persistance.DAOSubscriber;
import util.Utility;

/**
 *
 * @author shahin.behrooz@gmail.com
 */
public class InscriptionAction implements Action{
    public Result execute(HttpServletRequest request, HttpServletResponse response){
        List<String> dateList = new ArrayList<String>();
        List<String> creneauList = new ArrayList<String>();
        List<Horaire> listHoraire = Utility.getListHoraire();
        

        String selectedActivity = request.getParameter("activite");
        String selectedDate = request.getParameter("date");
        String selectedCreneau = request.getParameter("creneau");

        //Local validation sets
        String prevSelectedActivity = request.getParameter("prevSelectActivite");
        String prevSelectedDate = request.getParameter("prevSelectedDate");
        boolean selectedActivityFlag = true, selectedDateFlag = true;
        
        if (selectedActivity != null) {
          if (!prevSelectedActivity.equals(selectedActivity)) {
              prevSelectedActivity = selectedActivity;
              selectedActivityFlag = false;
          }
                dateList.clear();
                for (Horaire horaire : listHoraire) {

                    if (horaire.getActivite().getCategorie().equalsIgnoreCase(selectedActivity)) {

                        dateList.add(horaire.getId().getHdate().toString());
                    }

                }

                if (selectedDate != null) {
                    if (!prevSelectedDate.equals(selectedDate)) {
                        prevSelectedDate = selectedDate;
                        selectedDateFlag = false;
                    }
                    creneauList.clear();
                    for (Horaire horaire : listHoraire) {

                        if (horaire.getId().getHdate().toString().equalsIgnoreCase(selectedDate)) {

                            creneauList.add(horaire.getCreneau().getHeureDebut());
                        }

                    }

                }
                request.setAttribute("listDate", dateList);
                request.setAttribute("listCreneau", creneauList);
                request.setAttribute("prevSelectedActivity", selectedActivity);
                request.setAttribute("prevSelectedDate", selectedDate);

            }
            //To insert subsciber into the DB
            if (!selectedActivity.equals("") && !selectedDate.equals("") && !selectedCreneau.equals("")) {
                if (selectedActivityFlag && selectedDateFlag) {
                    String nom = request.getParameter("nom");
                    String prenom = request.getParameter("prenom");
                    String address = request.getParameter("adresse");
                    String phone = request.getParameter("phone");
                    String email = request.getParameter("email");
                    DAOSubscriber daoSubscriber = new DAOSubscriber();
                    //

                    daoSubscriber.insertParticipantData(Utility.getSubscriber(nom, prenom, address, email, phone, selectedDate, selectedCreneau));
                    request.setAttribute("selectedActivity", selectedActivity);
                    request.setAttribute("selectedDate", selectedDate);
                    request.setAttribute("selectedCreneau", selectedCreneau);

                    return new Result("/confirmInscription.jsp");

                }

            }

            return new Result("/subscribe.jsp");
          
    }
}
