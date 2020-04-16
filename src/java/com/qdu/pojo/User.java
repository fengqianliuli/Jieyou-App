/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.pojo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User implements Serializable{
    @Id
    private String username;
    private String userpassword;
    private String usergender;
    private String userphone;
    private String usermoney;
    private String usercredit;

    public User() {
    }

    public User(String username) {
        this.username = username;
    }

    public User(String username, String userpassword, String usergender, String userphone, String usermoney, String usercredit) {
        this.username = username;
        this.userpassword = userpassword;
        this.usergender = usergender;
        this.userphone = userphone;
        this.usermoney = usermoney;
        this.usercredit = usercredit;
    }

    

    

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword;
    }

    public String getUsergender() {
        return usergender;
    }

    public void setUsergender(String usergender) {
        this.usergender = usergender;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone;
    }

    public String getUsermoney() {
        return usermoney;
    }

    public void setUsermoney(String usermoney) {
        this.usermoney = usermoney;
    }

    public String getUsercredit() {
        return usercredit;
    }

    public void setUsercredit(String usercredit) {
        this.usercredit = usercredit;
    }

    

    
    
    
}
