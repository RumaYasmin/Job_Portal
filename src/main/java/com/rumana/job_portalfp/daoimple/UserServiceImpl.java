/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.daoimple;

import com.google.gson.Gson;
import com.rumana.job_portalfp.dao.Userservice;
import com.rumana.job_portalfp.model.User;
import com.rumana.job_portalfp.model.UserRole;
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
public class UserServiceImpl implements Userservice{
    
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String acceptUser(User u) {
        return null;
    }

    @Override
    public String insertUser(User u) {
        String status;
        try {
            Session s = sessionFactory.openSession();
            Transaction t = s.getTransaction();
            t.begin();
            UserRole role = new UserRole();
            role.setEmailid(u.getEmailid());
            role.setPassword(u.getPassword());

            s.save(u);
            s.save(role);
            t.commit();
            s.close();
            status = "Success";
            //logger.info("End of insert user method in userservice impl");
        } catch (Exception e) {
            //logger.info("inside catch accept user method in userservice impl");
            e.printStackTrace();
            status = "Fail";
        }
        return status;
    }

    @Override
    public String updateUser(User u) {
        return null;
    }

    @Override
    public String deleteUser(User u) {
        return null;
    }

    @Override
    public String viewUsers() {
      Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<User> statelist = s.createQuery("from User").list();
        Gson g = new Gson();
        String statelistgson = g.toJson(statelist);
        t.commit();
        s.close();
        return statelistgson;
    }

    @Override
    public User viewUser(String s) {
        Session sc = sessionFactory.openSession();
        Transaction t = sc.getTransaction();
        t.begin();
        User us = (User) sc.get(User.class, s);
        t.commit();
        sc.close();
        //logger.info("end of view user method in userservice impl");
        return us;
    }
    
}
