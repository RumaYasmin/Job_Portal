/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author USER
 */
@Entity
public class Employer implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int empid;
    @Column
    private String emailid;
    @Column
    private String comcatid;
    @Column
    private int area_id;
    @Column
    private String comname;
    @Column
    private String contperson;
    @Column
    private String contemail;
    @Column
    private String comwebsite;
    @Column
    private String comdetails;
    @Column
    private String comphone;
    @Column
    private String comfax;
    @Column
    private String comstatus;

    public int getEmpid() {
        return empid;
    }

    public void setEmpid(int empid) {
        this.empid = empid;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getComcatid() {
        return comcatid;
    }

    public void setComcatid(String comcatid) {
        this.comcatid = comcatid;
    }

    public int getArea_id() {
        return area_id;
    }

    public void setArea_id(int area_id) {
        this.area_id = area_id;
    }

    public String getComname() {
        return comname;
    }

    public void setComname(String comname) {
        this.comname = comname;
    }

    public String getContperson() {
        return contperson;
    }

    public void setContperson(String contperson) {
        this.contperson = contperson;
    }

    public String getContemail() {
        return contemail;
    }

    public void setContemail(String contemail) {
        this.contemail = contemail;
    }

    public String getComwebsite() {
        return comwebsite;
    }

    public void setComwebsite(String comwebsite) {
        this.comwebsite = comwebsite;
    }

    public String getComdetails() {
        return comdetails;
    }

    public void setComdetails(String comdetails) {
        this.comdetails = comdetails;
    }

    public String getComphone() {
        return comphone;
    }

    public void setComphone(String comphone) {
        this.comphone = comphone;
    }

    public String getComfax() {
        return comfax;
    }

    public void setComfax(String comfax) {
        this.comfax = comfax;
    }

    public String getComstatus() {
        return comstatus;
    }

    public void setComstatus(String comstatus) {
        this.comstatus = comstatus;
    }

    
}
