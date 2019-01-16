/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.controller;

import com.rumana.job_portalfp.dao.SkillService;
import com.rumana.job_portalfp.dao.Userservice;
import com.rumana.job_portalfp.model.Skill;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author B10
 */
@Controller
public class SkillController {
    @Autowired
    SkillService sl;
    @Autowired
    Userservice us;
    @Autowired
    private ServletContext servletContext;
    
    @RequestMapping("/showskillpage")
    public ModelAndView showskill() {
        String skilllist = sl.viewSkill();
        String userlist = us.viewUsers();
        ModelAndView mv = new ModelAndView("addskill", "newSkillObject", new Skill());
        mv.addObject("skilllists", skilllist);
        mv.addObject("userlists", userlist);
        mv.addObject("check", "true");
        return mv;
    }
    
    @RequestMapping(value = "/Skill", params = "Add")
    public String addskillpage(@ModelAttribute("newSkillObject") Skill skill, HttpServletRequest request) {
        sl.insertSkill(skill);       
        return "redirect:/showskillpage";
    }  
    @RequestMapping(value = "/Skill", params = "Edit")
    public String editSkill(@ModelAttribute("newSkillObject") Skill skill, HttpServletRequest request) {
        sl.updateSkill(skill.getSkillid(), skill);
        
        return "redirect:/showskillpage";
    }
    
    
    @RequestMapping("removingskill/{sklid}")
    public String removeskill(@PathVariable("sklid") int sklid) {
        sl.deleteSkill(sklid);
        return "redirect:/showskillpage";
    }
     @RequestMapping("/editingskill")
    public ModelAndView editskillpage(@RequestParam("getskid") int sklid) {
        String skilllist = sl.viewSkill();
        String userlist = us.viewUsers();
        ModelAndView mv = new ModelAndView("addskill", "newSkillObject", sl.viewOneSkill(sklid));
        mv.addObject("skilllists", skilllist);
        mv.addObject("userlists", userlist);
        mv.addObject("check", "false");
        return mv;
    }
    
}
