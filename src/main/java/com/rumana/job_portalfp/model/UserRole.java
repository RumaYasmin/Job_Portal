package com.rumana.job_portalfp.model;
// Generated Nov 20, 2018 3:22:38 PM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * UserRole generated by hbm2java
 */
@Entity

public class UserRole implements java.io.Serializable {

    @Id
    private String emailid;
    @Column
    private String userrole;
    @Column
    private String status = "True";
    @Column
    private String password;
 
    public String getEmailid() {
        return this.emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getUserrole() {
        return userrole;
    }

    public void setUserrole(String userrole) {
        this.userrole = userrole;
    }


    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
