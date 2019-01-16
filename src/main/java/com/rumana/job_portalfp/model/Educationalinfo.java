/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author USER
 */
@Entity
public class Educationalinfo implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int eduid;
    @Column
    private String emailid;
    @Column
    private String edulavel;
    @Column
    private String edutitle;
    @Column
    private String institutename;
    @Column
    private String majorgroup;
    @Temporal(TemporalType.DATE)
    private Date passingyear;
    @Column
    private String result;
    @Column
    private String bordun;

    public int getEduid() {
        return eduid;
    }

    public void setEduid(int eduid) {
        this.eduid = eduid;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getEdulavel() {
        return edulavel;
    }

    public void setEdulavel(String edulavel) {
        this.edulavel = edulavel;
    }

    public String getEdutitle() {
        return edutitle;
    }

    public void setEdutitle(String edutitle) {
        this.edutitle = edutitle;
    }

    public String getInstitutename() {
        return institutename;
    }

    public void setInstitutename(String institutename) {
        this.institutename = institutename;
    }

    public String getMajorgroup() {
        return majorgroup;
    }

    public void setMajorgroup(String majorgroup) {
        this.majorgroup = majorgroup;
    }

    public Date getPassingyear() {
        return passingyear;
    }

    public void setPassingyear(Date passingyear) {
        this.passingyear = passingyear;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getBordun() {
        return bordun;
    }

    public void setBordun(String bordun) {
        this.bordun = bordun;
    }
    
    

}
