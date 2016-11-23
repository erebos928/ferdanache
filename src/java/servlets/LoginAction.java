/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;
import persistance.DAOSubscriber;
import persistance.DAOUser;

/**
 *
 * @author shahin.behrooz@gmail.com
 */
public class LoginAction implements Action{

    @Override
    public Result execute(HttpServletRequest request, HttpServletResponse response) {
        String uname = request.getParameter("username");
        String pass = request.getParameter("password");
        DAOUser daoUser = new DAOUser();
        List<User> lst = daoUser.executeHQLQueryUser(uname);// en verite uname est l'adresse courriel
        if (lst.size() > 0)
        {
            User user = lst.get(0);
            if (user.getPassword().equals(pass))
            {
                request.getSession().setAttribute("user", user);
                return new Result("/Main.jsp");
            }
            //else
            return new Result("/page6.jsp");
        }
        
        return new Result("/page6.jsp");
    }
    
    
}
