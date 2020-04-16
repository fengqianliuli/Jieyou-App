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
public class Problem implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int pid;
    private String ptitle;
    private String pcontext;
    private String username;

    public Problem() {
    }

    public Problem(int pid) {
        this.pid = pid;
    }

    public Problem(int pid, String ptitle, String pcontext, String username) {
        this.pid = pid;
        this.ptitle = ptitle;
        this.pcontext = pcontext;
        this.username = username;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPtitle() {
        return ptitle;
    }

    public void setPtitle(String ptitle) {
        this.ptitle = ptitle;
    }

    public String getPcontext() {
        return pcontext;
    }

    public void setPcontext(String pcontext) {
        this.pcontext = pcontext;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    
}
