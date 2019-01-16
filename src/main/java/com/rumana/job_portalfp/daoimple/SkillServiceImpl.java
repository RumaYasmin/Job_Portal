/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.daoimple;

import com.google.gson.Gson;
import com.rumana.job_portalfp.dao.SkillService;
import com.rumana.job_portalfp.model.Skill;
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
public class SkillServiceImpl implements SkillService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public String insertSkill(Skill skill) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        s.save(skill);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public Integer updateSkill(int skillid, Skill skill) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Skill Skillobject = (Skill) s.get(Skill.class, skillid);
        Skillobject.setEmailid(skill.getEmailid());
        Skillobject.setSkillname(skill.getSkillname());

        s.update(Skillobject);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public Integer deleteSkill(int skillid) {
        Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Skill skill = (Skill) s.get(Skill.class, skillid);
        s.delete(skill);
        t.commit();
        s.close();
        return null;
    }

    @Override
    public String viewSkill() {
      Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        List<Skill> skillslist = s.createQuery("from Skill").list();
        Gson g = new Gson();
        String skillslistgson = g.toJson(skillslist);
        t.commit();
        s.close();
        return skillslistgson;
    }

    @Override
    public Skill viewOneSkill(int skillid) {
       Session s = sessionFactory.openSession();
        Transaction t = s.getTransaction();
        t.begin();
        Skill skill = (Skill) s.get(Skill.class, skillid);
        t.commit();
        s.close();
        return skill;
    }

}
