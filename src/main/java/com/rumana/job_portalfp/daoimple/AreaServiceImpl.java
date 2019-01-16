/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.daoimple;

import com.google.gson.Gson;
import com.rumana.job_portalfp.dao.AreaService;
import com.rumana.job_portalfp.model.Area;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author B10
 */
@Service
public class AreaServiceImpl implements AreaService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertArea(Area ar) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(ar);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public Integer updateArea(int area_id, Area ar) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Area Areaobject = (Area) s.get(Area.class, area_id);
        Areaobject.setCity_id(ar.getCity_id());
        Areaobject.setArea_id(ar.getArea_id());
        Areaobject.setArea_status(ar.getArea_status());

        s.update(Areaobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public Integer deleteArea(int area_id) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Area ar = (Area) s.get(Area.class, area_id);
        s.delete(ar);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewArea() {

        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Area> arealist = s.createQuery("from Area").list();
        Gson g = new Gson();
        String arealistgson = g.toJson(arealist);
        t.commit();
        s.close();
        return arealistgson;

    }

    @Override
    public Area viewOneArea(int area_id) {

        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Area ar = (Area) s.get(Area.class, area_id);
        t.commit();
        s.close();
        return ar;

    }

}
