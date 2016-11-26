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
public class ActionResolver {
    public Action getAction(HttpServletRequest request){
        String action = request.getParameter("action");
        System.out.println(action);
        if ("toSubscribe".equals(action))
            return new InscriptionAction();
        if("query".equals(action))
            return new QueryAction();
        if ("login".equals(action))
            return new LoginAction();
        if ("signup".equals(action))
            return new SignupAction();
        if ("logout".equals(action))
            return new LogoutAction();
        else
            return new Action(){public Result execute(HttpServletRequest request, HttpServletResponse response){return new Result("/Main.jsp");}};
    }
}
