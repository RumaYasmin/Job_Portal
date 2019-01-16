/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author User
 */
@Entity
public class CompanyCategory implements Serializable{
    @Id
    private String comcatid;
    @Column
    String comcatname;
    @Column
    String comcatstatus;

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

    public String getComcatstatus() {
        return comcatstatus;
    }

    public void setComcatstatus(String comcatstatus) {
        this.comcatstatus = comcatstatus;
    }

    
    
    
}
