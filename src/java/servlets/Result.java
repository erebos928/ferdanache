/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

/**
 *
 * @author shahin.behrooz@gmail.com
 */
public class Result {
    private String targetUrl;

    public Result(String targetUrl) {
        this.targetUrl = targetUrl;
    }
    
    public String getTargetUrl() {
        return targetUrl;
    }
    
}
