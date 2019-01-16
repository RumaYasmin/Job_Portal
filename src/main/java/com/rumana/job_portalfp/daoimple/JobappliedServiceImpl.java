/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.daoimple;

import com.google.gson.Gson;
import com.rumana.job_portalfp.dao.JobappliedService;
import com.rumana.job_portalfp.model.Jobapplied;;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author B10
 */
@Repository
public class JobappliedServiceImpl implements JobappliedService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertJobapplied(Jobapplied jobapplied) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(jobapplied);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateJobapplied(int applyid, Jobapplied jobapplied) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Jobapplied onejobappliedobject = (Jobapplied) s.get(Jobapplied.class, jobapplied);
        onejobappliedobject.setEmailid(jobapplied.getEmailid());
        onejobappliedobject.setJobpostid(jobapplied.getJobpostid());
        onejobappliedobject.setCoverletter(jobapplied.getCoverletter());
        onejobappliedobject.setExpectsalary(jobapplied.getExpectsalary());
        onejobappliedobject.setApplydate(jobapplied.getApplydate());
        onejobappliedobject.setApplystatus(jobapplied.getApplystatus());

        s.update(onejobappliedobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteJobapplied(int applyid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Jobapplied jobapplied = (Jobapplied) s.get(Jobapplied.class, applyid);
        s.delete(jobapplied);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewJobapplied() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Jobapplied> jobappliedlist = s.createQuery("from Jobapplied").list();
        Gson g = new Gson();
        String jobappliedlistgson = g.toJson(jobappliedlist);
        t.commit();
        s.close();
        return jobappliedlistgson;
    }

    @Override
    public Jobapplied viewOneJobapplied(int applyid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Jobapplied jobapplied = (Jobapplied) s.get(Jobapplied.class, applyid);
        t.commit();
        s.close();
        return jobapplied;
    }
}
