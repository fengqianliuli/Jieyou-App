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

/**
 *
 * @author Administrator
 */
@Entity
public class Remark implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int rid;
    private String rcontext;
    private String username;
    private int sid;
    

    public Remark() {
    }

    public Remark(int rid) {
        this.rid = rid;
    }

    public Remark(int rid, String rcontext, String username, int sid) {
        this.rid = rid;
        this.rcontext = rcontext;
        this.username = username;
        this.sid = sid;
    }


    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public String getRcontext() {
        return rcontext;
    }

    public void setRcontext(String rcontext) {
        this.rcontext = rcontext;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    
    
    
}
