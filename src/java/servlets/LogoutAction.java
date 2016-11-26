/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author shahin.behrooz@gmail.com
 */
public class LogoutAction implements Action{

    @Override
    public Result execute(HttpServletRequest request, HttpServletResponse response) {
        request.getSession().removeAttribute("user");
        return new Result("/Main.jsp");
    }
    
}
