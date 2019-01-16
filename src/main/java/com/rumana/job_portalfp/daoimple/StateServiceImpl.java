/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.daoimple;

import com.google.gson.Gson;
import com.rumana.job_portalfp.dao.StateService;
import com.rumana.job_portalfp.model.State;
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
public class StateServiceImpl implements StateService{
    
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertState(State st) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(st);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public Integer updateState(int state_id, State st) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        State Stateobject = (State) s.get(State.class, state_id);
        Stateobject.setCounid(st.getCounid());
        Stateobject.setState_name(st.getState_name());
        Stateobject.setState_code(st.getState_code());

        s.update(Stateobject);
        t.commit();
        s.close();
        return null;
    }
    

    @Override
    public Integer deleteState(int state_id) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        State st = (State) s.get(State.class, state_id);
        s.delete(st);
        t.commit();
        s.close();
        return null; 
    }
    @Override
    public String viewState() {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<State> statelist = s.createQuery("from State").list();
        Gson g = new Gson();
        String statelistgson = g.toJson(statelist);
        t.commit();
        s.close();
        return statelistgson; 
    }
    
    @Override
    public State viewOneState(int state_id) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        State st = (State) s.get(State.class, state_id);
        t.commit();
        s.close();
        return st; 

    }
    
    
}
