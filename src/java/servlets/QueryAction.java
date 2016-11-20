/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import persistance.DAOSubscriber;

/**
 *
 * @author shahin.behrooz@gmail.com
 */
public class QueryAction implements Action{

    @Override
    public Result execute(HttpServletRequest request, HttpServletResponse response) {
            DAOSubscriber daoSubscriber = new DAOSubscriber();
            String activiteQuery=request.getParameter("activitQuery");
            List horaireList=daoSubscriber.executeHQLQueryActivity(activiteQuery);
            request.setAttribute("horaireList", horaireList);
            request.setAttribute("activitQuery", activiteQuery.toUpperCase());
            return new Result("/WEB-INF/affichageQuery.jsp");
    }
    
}
