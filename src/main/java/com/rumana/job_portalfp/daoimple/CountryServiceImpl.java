/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.daoimple;

import com.google.gson.Gson;
import com.rumana.job_portalfp.dao.CountryService;
import com.rumana.job_portalfp.model.Country;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author User
 */
@Repository
public class CountryServiceImpl implements CountryService{

    @Autowired
    SessionFactory sessionFactory;
    
    @Override
    public String insertCountry(Country cm) {
        
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(cm);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateCountry(Country cm) {
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
    public String deleteCountry(String id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Country cm = (Country) s.get(Country.class, id);
        s.delete(cm);
        t.commit();
        s.close();

        return null;
    }

    @Override
    public String viewCountry() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Country> countryieslist = s.createQuery("from Country").list();
        Gson g = new Gson();
        String countrylistgson = g.toJson(countryieslist);
        t.commit();
        s.close();
        //System.out.println(categorylistgson);
        return countrylistgson;
    }

    @Override
    public Country viewOneCountry(String id) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Country cm = (Country) s.get(Country.class, id);
        t.commit();
        s.close();
        Gson g = new Gson();
        String countrygson = g.toJson(cm);
        return cm;
    }
    
}
