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
public class Jobapplied implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int applyid;
    @Column
    private int jobpostid;
    @Column
    private String emailid;
    @Column
    private String coverletter;
    @Column
    private String expectsalary;
    @Temporal(TemporalType.DATE)
    private Date applydate;
    @Column
    private String applystatus;

    public int getApplyid() {
        return applyid;
    }

    public void setApplyid(int applyid) {
        this.applyid = applyid;
    }

    public int getJobpostid() {
        return jobpostid;
    }

    public void setJobpostid(int jobpostid) {
        this.jobpostid = jobpostid;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getCoverletter() {
        return coverletter;
    }

    public void setCoverletter(String coverletter) {
        this.coverletter = coverletter;
    }

    public String getExpectsalary() {
        return expectsalary;
    }

    public void setExpectsalary(String expectsalary) {
        this.expectsalary = expectsalary;
    }

    public Date getApplydate() {
        return applydate;
    }

    public void setApplydate(Date applydate) {
        this.applydate = applydate;
    }

    

    public String getApplystatus() {
        return applystatus;
    }

    public void setApplystatus(String applystatus) {
        this.applystatus = applystatus;
    }

}
