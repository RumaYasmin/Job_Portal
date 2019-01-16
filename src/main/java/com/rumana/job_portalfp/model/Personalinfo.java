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
public class Personalinfo implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int persinfoid;
    @Column
    private String emailid;
    @Column
    private String firstname;
    @Column
    private String lastname;
    @Column
    private String fathername;
    @Column
    private String mothername;
    @Temporal(TemporalType.DATE)
    private Date dofbirth;
    @Column
    private String presaddress;
    @Column
    private String permaddress;
    @Column
    private String meritialstatus;
    @Column
    private String gender;
    @Column
    private String religion;
    @Column
    private String nationality;

    public int getPersinfoid() {
        return persinfoid;
    }

    public void setPersinfoid(int persinfoid) {
        this.persinfoid = persinfoid;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getFathername() {
        return fathername;
    }

    public void setFathername(String fathername) {
        this.fathername = fathername;
    }

    public String getMothername() {
        return mothername;
    }

    public void setMothername(String mothername) {
        this.mothername = mothername;
    }

    public Date getDofbirth() {
        return dofbirth;
    }

    public void setDofbirth(Date dofbirth) {
        this.dofbirth = dofbirth;
    }

    public String getPresaddress() {
        return presaddress;
    }

    public void setPresaddress(String presaddress) {
        this.presaddress = presaddress;
    }

    public String getPermaddress() {
        return permaddress;
    }

    public void setPermaddress(String permaddress) {
        this.permaddress = permaddress;
    }

    public String getMeritialstatus() {
        return meritialstatus;
    }

    public void setMeritialstatus(String meritialstatus) {
        this.meritialstatus = meritialstatus;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    
}
