/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.daoimple;

import com.google.gson.Gson;
import com.rumana.job_portalfp.model.CompanyCategory;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.rumana.job_portalfp.dao.CompanyCategoryService;

/**
 *
 * @author User
 */
@Repository
public class CompanyCategoryServiceImpl implements CompanyCategoryService{

    @Autowired
    SessionFactory sessionFactory;
    
    @Override
    public String insertCompanyCategory(CompanyCategory cm) {
        
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(cm);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateCompanyCategory(CompanyCategory cm) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        //CategoriesModel cm = (CategoriesModel)s.get(CategoriesModel.class, categoryid);
        s.update(cm);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteCompanyCategory(String id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        CompanyCategory cm = (CompanyCategory) s.get(CompanyCategory.class, id);
        s.delete(cm);
        t.commit();
        s.close();

        return null;
    }

    @Override
    public String viewCompanyCategory() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<CompanyCategory> companycategorieslist = s.createQuery("from CompanyCategory").list();
        Gson g = new Gson();
        String companycategorylistgson = g.toJson(companycategorieslist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return companycategorylistgson;
    }

    @Override
    public CompanyCategory viewOneCompanyCategory(String id) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        CompanyCategory cm = (CompanyCategory) s.get(CompanyCategory.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String companycategorygson = g.toJson(cm);
        return cm;
    }

   
    
}
