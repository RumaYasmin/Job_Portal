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
public class Country implements Serializable{
    @Id
    private String counid;
    @Column
    String counname;
    @Column
    String councode;
    @Column
    String counstatus;

    public String getCouncode() {
        return councode;
    }

    public void setCouncode(String councode) {
        this.councode = councode;
    }
    

    public String getCounid() {
        return counid;
    }

    public void setCounid(String counid) {
        this.counid = counid;
    }

    public String getCounname() {
        return counname;
    }

    public void setCounname(String counname) {
        this.counname = counname;
    }

    public String getCounstatus() {
        return counstatus;
    }

    public void setCounstatus(String counstatus) {
        this.counstatus = counstatus;
    }
 
    
}
