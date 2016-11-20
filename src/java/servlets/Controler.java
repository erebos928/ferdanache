/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Activite;
import model.Creneau;
import model.Horaire;
import model.Salle;
import model.User;
import persistance.DAOSubscriber;
import util.Utility;

/**
 *
 * @author Mohamed
 */
@WebServlet(name = "Controler", urlPatterns = {"/Controler/*"}, loadOnStartup = 1)
public class Controler extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     *
     */
    private List list;
    //DAO oracle DATABASE (subscriber)
    DAOSubscriber daoSubscriber;
    List<String> dateList = new ArrayList<String>();
    List<String> creneauList = new ArrayList<String>();

    @Override
    public void init() throws ServletException {
        daoSubscriber = new DAOSubscriber();
        list = daoSubscriber.getActivtyInformations();
        Utility.builtAllList(list);

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        if (session == null) {
            response.sendRedirect("WEB-INF/error.jsp");
        }
        //From which jsp page came the query (a hidden input balise name action)
        String action = request.getParameter("action");
        //To get Horaires list and activities List
        List<Horaire> listHoraire = Utility.getListHoraire();
        List<Activite> listActivity = Utility.getListActivity();

        //session.setAttribute("listHoraire", listHoraire);
        //session.setAttribute("listActivite", listActivity);
        // these  parameters are gotten from the subscribe.jsp page
        String selectedActivity = request.getParameter("activite");
        String selectedDate = request.getParameter("date");
        String selectedCreneau = request.getParameter("creneau");

        //Local validation sets
        String prevSelectedActivity = request.getParameter("prevSelectActivite");
        String prevSelectedDate = request.getParameter("prevSelectedDate");
        boolean selectedActivityFlag = true, selectedDateFlag = true;
        //User object in session shows if user is logged in or not
        Object u = request.getSession().getAttribute("user");
        User user = null;
        if (u !=null) 
            user = (User)u; 
        
        //login
        if ("login".equals(action)) {
            String uname = request.getParameter("username");
            String pass = request.getParameter("Password");
            User us = new User(uname,pass);
            if (authenticate(us))
            {
                request.getSession().setAttribute("user", us);
                response.sendRedirect("./subscribe.jsp");
                return;
            }
            else
            {
                getServletContext().getRequestDispatcher("/page6.html").forward(request, response);
                return;
            }
        }
        if (request.getRequestURL().indexOf("subscribe.jsp") >= 0 )
            
            if (user == null)
            {
                response.sendRedirect("../page6.html");
                return;
            }
   
        //To built the drop lists in the subscribe.jsp page
        if ("toSubscribe".equals(action)) {
            
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
                    daoSubscriber.insertParticipantData(Utility.getSubscriber(nom, prenom, address, email, phone, selectedDate, selectedCreneau));
                    request.setAttribute("selectedActivity", selectedActivity);
                    request.setAttribute("selectedDate", selectedDate);
                    request.setAttribute("selectedCreneau", selectedCreneau);

                    getServletContext().getRequestDispatcher("/confirmInscription.jsp").forward(request, response);

                }

            }

            getServletContext().getRequestDispatcher("/subscribe.jsp").forward(request, response);
        }else if("query".equals(action)){
            
            String activiteQuery=request.getParameter("activitQuery");
            List horaireList=daoSubscriber.executeHQLQueryActivity(activiteQuery);
            request.setAttribute("horaireList", horaireList);
            request.setAttribute("activitQuery", activiteQuery.toUpperCase());
            getServletContext().getRequestDispatcher("/WEB-INF/affichageQuery.jsp").forward(request, response);
        }

    }
  
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private boolean authenticate(User us) {
        return true;
    }

}
