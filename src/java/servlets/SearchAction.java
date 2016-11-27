/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Horaire;
import persistance.DAOSubscriber;

/**
 *
 * @author shahin.behrooz@gmail.com
 */
public class SearchAction implements Action{

    @Override
    public Result execute(HttpServletRequest request, HttpServletResponse response) {
        String activity = request.getParameter("activity");
        String fromDate = request.getParameter("fromDate");
        String toDate = request.getParameter("toDate");
        String fromHour = request.getParameter("fromHour");
        String toHour = request.getParameter("toHour");
        DAOSubscriber sub = new DAOSubscriber();
        List<Horaire> list = sub.executeOveralQuery(activity, fromDate, toDate, fromHour, toHour);
        request.setAttribute("searchResult", "true");
        request.setAttribute("horaires",list);
        return new Result("/subscribe.jsp");
    }
    
}
