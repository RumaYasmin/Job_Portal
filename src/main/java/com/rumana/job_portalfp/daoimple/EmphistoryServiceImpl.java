/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.daoimple;

import com.google.gson.Gson;
import com.rumana.job_portalfp.dao.EmphistoryService;
import com.rumana.job_portalfp.model.Emphistory;
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
public class EmphistoryServiceImpl implements EmphistoryService{
    
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertEmphistory(Emphistory emphistory) {
      Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(emphistory);
        t.commit();
        s.close();
        return null;  
    }
    @Override
    public String updateEmphistory(int emphisid, Emphistory emphistory) {
      Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Emphistory oneemphistoryobject = (Emphistory) s.get(Emphistory.class, emphisid);
        oneemphistoryobject.setEmailid(emphistory.getEmailid());
        oneemphistoryobject.setComcatid(emphistory.getComcatid());
        oneemphistoryobject.setComcatname(emphistory.getComcatname());
        oneemphistoryobject.setComlocation(emphistory.getComlocation());
        oneemphistoryobject.setComdptname(emphistory.getComdptname());
        oneemphistoryobject.setPosition(emphistory.getPosition());
        oneemphistoryobject.setRespons(emphistory.getRespons());
        oneemphistoryobject.setFromdate(emphistory.getFromdate());
        oneemphistoryobject.setTodate(emphistory.getTodate());      
        s.update(oneemphistoryobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteEmphistory(int emphisid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Emphistory emphistory = (Emphistory) s.get(Emphistory.class, emphisid);
        s.delete(emphistory);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewEmphistory() {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Emphistory> emphistorylist = s.createQuery("from Emphistory").list();
        Gson g = new Gson();
        String emphistorylistlistgson = g.toJson(emphistorylist);
        t.commit();
        s.close();
        return emphistorylistlistgson;
    }

    @Override
    public Emphistory viewOneEmphistory(int emphisid) {
         Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Emphistory emphistory = (Emphistory) s.get(Emphistory.class, emphisid);
        t.commit();
        s.close();
        return emphistory;
    }
    
}
