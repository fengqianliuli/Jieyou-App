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
public class Answer implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int aid;
    private String acontext;
    private String username;
    private int pid;

    public Answer() {
    }

    public Answer(int aid) {
        this.aid = aid;
    }

    public Answer(int aid, String acontext, String username, int pid) {
        this.aid = aid;
        this.acontext = acontext;
        this.username = username;
        this.pid = pid;
    }

    

    

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAcontext() {
        return acontext;
    }

    public void setAcontext(String acontext) {
        this.acontext = acontext;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    
}
