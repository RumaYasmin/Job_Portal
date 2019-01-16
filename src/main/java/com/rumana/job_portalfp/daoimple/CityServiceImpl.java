/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.daoimple;

import com.google.gson.Gson;
import com.rumana.job_portalfp.dao.CityService;
import com.rumana.job_portalfp.model.City;
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
public class CityServiceImpl implements CityService{
    
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertCity(City c) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(c);
        t.commit();
        s.close();
        return null;    
    }

    @Override
    public Integer updateCity(int city_id, City c) {
      Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        City Cityobject = (City) s.get(City.class, city_id);
        Cityobject.setState_id(c.getState_id());
                Cityobject.setCity_name(c.getCity_name());
        Cityobject.setCity_status(c.getCity_status());

        
        s.update(Cityobject);
        t.commit();
        s.close();
        return null;     
    }

    @Override
    public Integer deleteCity(int city_id) {
      Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        City c = (City) s.get(City.class, city_id);
        s.delete(c);
        t.commit();
        s.close();
        return null;      
    }

    @Override
    public String viewCity() {
     Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<City> citylist = s.createQuery("from City").list();
        Gson g = new Gson();
        String citylistgson = g.toJson(citylist);
        t.commit();
        s.close();
        return citylistgson;      
    }

    @Override
    public City viewOneCity(int city_id) {
      Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        City c = (City) s.get(City.class, city_id);
        t.commit();
        s.close();
        return c;  
    }
    
}
