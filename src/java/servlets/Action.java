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
public interface Action {
    public Result execute(HttpServletRequest request, HttpServletResponse response); 
}
