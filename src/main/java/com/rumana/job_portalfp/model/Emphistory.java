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
 * @author B10
 */
@Entity
public class Emphistory implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int emphisid;
    @Column
    private String emailid;
    @Column
    private String comcatid;
    @Column
    private String comcatname;
    @Column
    private String comlocation;
    @Column
    private String comdptname;
    @Column
    private String position;
    @Column
    private String respons;
    @Temporal(TemporalType.DATE)
    private Date fromdate;
    @Temporal(TemporalType.DATE)
    private Date todate;

    public int getEmphisid() {
        return emphisid;
    }

    public void setEmphisid(int emphisid) {
        this.emphisid = emphisid;
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

    public String getComcatname() {
        return comcatname;
    }

    public void setComcatname(String comcatname) {
        this.comcatname = comcatname;
    }

    public String getComlocation() {
        return comlocation;
    }

    public void setComlocation(String comlocation) {
        this.comlocation = comlocation;
    }

    public String getComdptname() {
        return comdptname;
    }

    public void setComdptname(String comdptname) {
        this.comdptname = comdptname;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getRespons() {
        return respons;
    }

    public void setRespons(String respons) {
        this.respons = respons;
    }

    public Date getFromdate() {
        return fromdate;
    }

    public void setFromdate(Date fromdate) {
        this.fromdate = fromdate;
    }

    public Date getTodate() {
        return todate;
    }

    public void setTodate(Date todate) {
        this.todate = todate;
    }

    
}
