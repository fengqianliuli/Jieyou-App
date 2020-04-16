/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.pojo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Secret implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int sid;
    private String stitle;
    private String scontext;
    private String stime;
    private String stype;
    private String username;

    public Secret() {
    }

    public Secret(int sid) {
        this.sid = sid;
    }

    public Secret(int sid, String stitle, String scontext, String stime, String stype, String username) {
        this.sid = sid;
        this.stitle = stitle;
        this.scontext = scontext;
        this.stime = stime;
        this.stype = stype;
        this.username = username;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getStitle() {
        return stitle;
    }

    public void setStitle(String stitle) {
        this.stitle = stitle;
    }

    public String getScontext() {
        return scontext;
    }

    public void setScontext(String scontext) {
        this.scontext = scontext;
    }

    public String getStime() {
        return stime;
    }

    public void setStime(String stime) {
        this.stime = stime;
    }

    public String getStype() {
        return stype;
    }

    public void setStype(String stype) {
        this.stype = stype;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }


    

    
    
    
}
