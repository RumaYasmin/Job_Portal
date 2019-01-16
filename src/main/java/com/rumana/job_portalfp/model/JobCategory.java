/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author USER
 */
@Entity
public class JobCategory {
    
    @Id
    private String jobcatid;
    @Column
    String jobcatname;
    @Column
    String jobcatstatus;

    public String getJobcatid() {
        return jobcatid;
    }

    public void setJobcatid(String jobcatid) {
        this.jobcatid = jobcatid;
    }

    public String getJobcatname() {
        return jobcatname;
    }

    public void setJobcatname(String jobcatname) {
        this.jobcatname = jobcatname;
    }

    public String getJobcatstatus() {
        return jobcatstatus;
    }

    public void setJobcatstatus(String jobcatstatus) {
        this.jobcatstatus = jobcatstatus;
    }

   
    
    
}
