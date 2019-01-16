/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.daoimple;

import com.google.gson.Gson;
import com.rumana.job_portalfp.dao.JobCategoryService;
import com.rumana.job_portalfp.model.JobCategory;
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
public class JobCategoryserviceImpl implements JobCategoryService{
    
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertJobCategory(JobCategory jc) {
     Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(jc);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateJobCategory(JobCategory jc) {
     Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        //JobCategoriesModel cm = (JobCategoriesModel)s.get(JobCategoriesModel.class, jobcategoryid);
        s.update(jc);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteJobCategory(String id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        JobCategory jc = (JobCategory) s.get(JobCategory.class, id);
        s.delete(jc);
        t.commit();
        s.close();

        return null;
    }

    @Override
    public String viewJobCategory() {
    Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<JobCategory> jobcategorieslist = s.createQuery("from JobCategory").list();
        Gson g = new Gson();
        String jobcategorylistgson = g.toJson(jobcategorieslist);
        t.commit();
        s.close();
        //System.out.println(jobcategorylistgson);
        return jobcategorylistgson;
    }

    @Override
    public JobCategory viewOneJobCategory(String id) {
     Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        JobCategory jc = (JobCategory) s.get(JobCategory.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String jobcategorygson = g.toJson(jc);
        return jc;
    }
    
}
