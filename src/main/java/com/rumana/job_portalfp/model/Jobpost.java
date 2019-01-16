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
public class Jobpost implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int jobpostid;
    @Column
    private int empid;
    @Column
    private String jobcatid;
    @Column
    private String jobtitle;
    @Column
    private String joblocation;
    @Column
    private String numofvacancy;
    @Temporal(TemporalType.DATE)
    private Date startdate;
    @Temporal(TemporalType.DATE)
    private Date enddate;
    @Column
    private String skillreq;
    @Column
    private String edureq;
    @Column
    private String basicreqm;
    @Column
    private String salaryrng;
    @Column
    private String jobnature;
    @Column
    private String experencereq;
    @Column
    private String jobpoststatus;
    @Column
    private String otherbenifit;
    @Column
    private String useremail;

    public int getJobpostid() {
        return jobpostid;
    }

    public void setJobpostid(int jobpostid) {
        this.jobpostid = jobpostid;
    }

    public int getEmpid() {
        return empid;
    }

    public void setEmpid(int empid) {
        this.empid = empid;
    }

    public String getJobcatid() {
        return jobcatid;
    }

    public void setJobcatid(String jobcatid) {
        this.jobcatid = jobcatid;
    }

    public String getJobtitle() {
        return jobtitle;
    }

    public void setJobtitle(String jobtitle) {
        this.jobtitle = jobtitle;
    }

    public String getJoblocation() {
        return joblocation;
    }

    public void setJoblocation(String joblocation) {
        this.joblocation = joblocation;
    }

    public String getNumofvacancy() {
        return numofvacancy;
    }

    public void setNumofvacancy(String numofvacancy) {
        this.numofvacancy = numofvacancy;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    

    public String getSkillreq() {
        return skillreq;
    }

    public void setSkillreq(String skillreq) {
        this.skillreq = skillreq;
    }

    public String getEdureq() {
        return edureq;
    }

    public void setEdureq(String edureq) {
        this.edureq = edureq;
    }

    public String getBasicreqm() {
        return basicreqm;
    }

    public void setBasicreqm(String basicreqm) {
        this.basicreqm = basicreqm;
    }

    public String getSalaryrng() {
        return salaryrng;
    }

    public void setSalaryrng(String salaryrng) {
        this.salaryrng = salaryrng;
    }

    public String getJobnature() {
        return jobnature;
    }

    public void setJobnature(String jobnature) {
        this.jobnature = jobnature;
    }

    public String getExperencereq() {
        return experencereq;
    }

    public void setExperencereq(String experencereq) {
        this.experencereq = experencereq;
    }

    public String getJobpoststatus() {
        return jobpoststatus;
    }

    public void setJobpoststatus(String jobpoststatus) {
        this.jobpoststatus = jobpoststatus;
    }

    public String getOtherbenifit() {
        return otherbenifit;
    }

    public void setOtherbenifit(String otherbenifit) {
        this.otherbenifit = otherbenifit;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail;
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

}
