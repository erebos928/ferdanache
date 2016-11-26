/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;
import persistance.DAOUser;

/**
 *
 * @author shahin.behrooz@gmail.com
 */
public class SignupAction implements Action{

    @Override
    public Result execute(HttpServletRequest request, HttpServletResponse response) {
        DAOUser daoUser = new DAOUser();
        String email = request.getParameter("email");
        if (daoUser.executeHQLQueryUser(email).size() > 0)
        {
            request.setAttribute("signupMessage", "L'utilisateur: " + email + " existe déjà.");
            System.out.println("sign");
            return new Result("/signup.jsp");
        }
        else
        {
            User user = new User(email, request.getParameter("name"),request.getParameter("Password"));
            daoUser.insertSignupData(user);
        }
        return new Result("/signup.jsp");
    }
    
}
