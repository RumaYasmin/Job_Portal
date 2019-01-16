/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.daoimple;

import com.google.gson.Gson;
import com.rumana.job_portalfp.dao.EducationalinfoService;
import com.rumana.job_portalfp.model.Educationalinfo;
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
public class EducationalinfoServiceImpl implements EducationalinfoService{
    
@Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertEducationalinfo(Educationalinfo educationalinfo) {
      Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(educationalinfo);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updateEducationalinfo(int eduid, Educationalinfo educationalinfo) {
      Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Educationalinfo oneeducationalinfoobject = (Educationalinfo) s.get(Educationalinfo.class, eduid);
        oneeducationalinfoobject.setEduid(oneeducationalinfoobject.getEduid());
        oneeducationalinfoobject.setEmailid(oneeducationalinfoobject.getEmailid());
        oneeducationalinfoobject.setEdulavel(oneeducationalinfoobject.getEdulavel());
        oneeducationalinfoobject.setEdutitle(oneeducationalinfoobject.getEdutitle());
        oneeducationalinfoobject.setInstitutename(oneeducationalinfoobject.getInstitutename());
        oneeducationalinfoobject.setMajorgroup(oneeducationalinfoobject.getMajorgroup());
        oneeducationalinfoobject.setPassingyear(oneeducationalinfoobject.getPassingyear());
        oneeducationalinfoobject.setResult(oneeducationalinfoobject.getResult());
        oneeducationalinfoobject.setBordun(oneeducationalinfoobject.getBordun());
        s.update(oneeducationalinfoobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deleteEducationalinfo(int eduid) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Educationalinfo educationalinfo = (Educationalinfo) s.get(Educationalinfo.class, eduid);
        s.delete(educationalinfo);
        t.commit();
        s.close();
        return null; 
    }

    @Override
    public String viewEducationalinfo() {
     Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Educationalinfo> educationalinfolist = s.createQuery("from Educationalinfo").list();
        Gson g = new Gson();
        String educationalinfolistlistgson = g.toJson(educationalinfolist);
        t.commit();
        s.close();
        return educationalinfolistlistgson;  
    }

    @Override
    public Educationalinfo viewOneEducationalinfo(int eduid) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Educationalinfo educationalinfo = (Educationalinfo) s.get(Educationalinfo.class, eduid);
        t.commit();
        s.close();
        return educationalinfo;
    }
    
}
