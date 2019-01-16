/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.daoimple;

import com.google.gson.Gson;
import com.rumana.job_portalfp.dao.JobpostService;
import com.rumana.job_portalfp.model.Jobpost;
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
public class JobpostServiceImpl implements JobpostService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertJobpost(Jobpost jobpost) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(jobpost);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateJobpost(int jobpostid, Jobpost jobpost) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Jobpost onejobpostobject = (Jobpost) s.get(Jobpost.class, jobpostid);
        onejobpostobject.setEmpid(jobpost.getEmpid());
        onejobpostobject.setJobcatid(jobpost.getJobcatid());
        onejobpostobject.setJobtitle(jobpost.getJobtitle());
        onejobpostobject.setJoblocation(jobpost.getJoblocation());
        onejobpostobject.setNumofvacancy(jobpost.getNumofvacancy());
        onejobpostobject.setStartdate(jobpost.getStartdate());
        onejobpostobject.setEnddate(jobpost.getEnddate());
        onejobpostobject.setSkillreq(jobpost.getSkillreq());
        onejobpostobject.setEdureq(jobpost.getEdureq());
        onejobpostobject.setBasicreqm(jobpost.getBasicreqm());
        onejobpostobject.setSalaryrng(jobpost.getSalaryrng());
        onejobpostobject.setJobnature(jobpost.getJobnature());
        onejobpostobject.setExperencereq(jobpost.getExperencereq());
        onejobpostobject.setJobpoststatus(jobpost.getJobpoststatus());
        onejobpostobject.setOtherbenifit(jobpost.getOtherbenifit());
        onejobpostobject.setUseremail(jobpost.getUseremail());
        s.update(onejobpostobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteJobpost(int jobpostid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Jobpost jobpost = (Jobpost) s.get(Jobpost.class, jobpostid);
        s.delete(jobpost);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewJobpost() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Jobpost> jobpostlist = s.createQuery("from Jobpost").list();
        Gson g = new Gson();
        String jobpostlistgson = g.toJson(jobpostlist);
        t.commit();
        s.close();
        return jobpostlistgson;
    }

    @Override
    public Jobpost viewOneJobpost(int jobpostid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Jobpost jobpost = (Jobpost) s.get(Jobpost.class, jobpostid);
        t.commit();
        s.close();
        return jobpost;
    }

}
