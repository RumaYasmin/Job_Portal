/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.daoimple;

import com.google.gson.Gson;
import com.rumana.job_portalfp.dao.PersonalinfoService;
import com.rumana.job_portalfp.model.Personalinfo;
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
public class PersonalinfoServiceImpl implements PersonalinfoService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertPersonalinfo(Personalinfo personalinfo) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(personalinfo);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String updatePersonalinfo(int persinfoid, Personalinfo personalinfo) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Personalinfo onepersonalinfoobject = (Personalinfo) s.get(Personalinfo.class, persinfoid);
        onepersonalinfoobject.setEmailid(personalinfo.getEmailid());
        onepersonalinfoobject.setFirstname(personalinfo.getFirstname());
        onepersonalinfoobject.setLastname(personalinfo.getLastname());
        onepersonalinfoobject.setFathername(personalinfo.getFathername());
        onepersonalinfoobject.setMothername(personalinfo.getMothername());
        onepersonalinfoobject.setDofbirth(personalinfo.getDofbirth());
        onepersonalinfoobject.setPresaddress(personalinfo.getPresaddress());
        onepersonalinfoobject.setPermaddress(personalinfo.getPermaddress());
        onepersonalinfoobject.setMeritialstatus(personalinfo.getMeritialstatus());
        onepersonalinfoobject.setGender(personalinfo.getGender());
        onepersonalinfoobject.setReligion(personalinfo.getReligion());
        onepersonalinfoobject.setNationality(personalinfo.getNationality());
        s.update(onepersonalinfoobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String deletePersonalinfo(int persinfoid) {
         Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Personalinfo personalinfo = (Personalinfo) s.get(Personalinfo.class, persinfoid);
        s.delete(personalinfo);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewPersonalinfo() {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Personalinfo> personalinfolist = s.createQuery("from Personalinfo").list();
        Gson g = new Gson();
        String personalinfolistgson = g.toJson(personalinfolist);
        t.commit();
        s.close();
        return personalinfolistgson;
    }

    @Override
    public Personalinfo viewOnePersonalinfo(int persinfoid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Personalinfo personalinfo = (Personalinfo) s.get(Personalinfo.class, persinfoid);
        t.commit();
        s.close();
        return personalinfo;
    }

}
