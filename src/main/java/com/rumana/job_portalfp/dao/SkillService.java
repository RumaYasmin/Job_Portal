/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.dao;

import com.rumana.job_portalfp.model.Skill;
import org.springframework.stereotype.Service;

/**
 *
 * @author B10
 */
@Service
public interface SkillService {

    public String insertSkill(Skill skill);

    public Integer updateSkill(int skillid, Skill skill);

    public Integer deleteSkill(int skillid);

    public String viewSkill();

    public Skill viewOneSkill(int skillid);

}
