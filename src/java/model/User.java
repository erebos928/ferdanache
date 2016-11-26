/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author 1695223
 */
public class User {
    String name;
    String password;
    private int userId;
    private String email;
    
    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public User(String email,String name, String password) {
        this.name = name;
        this.email = email;
        this.password = password;
    }
    public User(){
        
    }
    /**
     * @return the subscriberId
     */
    public int getUserId() {
        return userId;
    }

    /**
     * @param userId the subscriberId to set
     */
    public void setUserId(int subscriberId) {
        this.userId = subscriberId;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }
    
}
