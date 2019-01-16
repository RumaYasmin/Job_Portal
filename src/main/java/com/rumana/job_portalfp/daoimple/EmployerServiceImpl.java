/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.daoimple;

import com.google.gson.Gson;
import com.rumana.job_portalfp.dao.EmployerService;
import com.rumana.job_portalfp.model.Employer;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author USER
 */
@Repository
public class EmployerServiceImpl implements EmployerService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertEmployer(Employer employer) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(employer);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateEmployer(int empid, Employer employer) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Employer oneemployerobject = (Employer) s.get(Employer.class, empid);
        oneemployerobject.setEmpid(employer.getEmpid());
        oneemployerobject.setEmailid(employer.getEmailid());
        oneemployerobject.setComcatid(employer.getComcatid());
        oneemployerobject.setArea_id(employer.getArea_id());
        oneemployerobject.setComname(employer.getComname());
        oneemployerobject.setContperson(employer.getContperson());
        oneemployerobject.setContemail(employer.getContemail());
        oneemployerobject.setComwebsite(employer.getComwebsite());
        oneemployerobject.setComdetails(employer.getComdetails());
        oneemployerobject.setComphone(employer.getComphone());
        oneemployerobject.setComfax(employer.getComfax());
        oneemployerobject.setComstatus(employer.getComstatus());
        s.update(oneemployerobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteEmployer(int empid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Employer employer = (Employer) s.get(Employer.class, empid);
        s.delete(employer);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewEmployer() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Employer> employerlist = s.createQuery("from Employer").list();
        Gson g = new Gson();
        String employerlistgson = g.toJson(employerlist);
        t.commit();
        s.close();
        return employerlistgson;
    }

    @Override
    public Employer viewOneEmployer(int empid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Employer employer = (Employer) s.get(Employer.class, empid);
        t.commit();
        s.close();
        return employer;
    }

}
