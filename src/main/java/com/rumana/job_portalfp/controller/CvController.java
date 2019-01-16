/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.controller;

import com.rumana.job_portalfp.dao.EducationalinfoService;
import com.rumana.job_portalfp.dao.EmphistoryService;
import com.rumana.job_portalfp.dao.JobappliedService;
import com.rumana.job_portalfp.dao.PersonalinfoService;
import com.rumana.job_portalfp.dao.SkillService;
import com.rumana.job_portalfp.dao.Userservice;
import com.rumana.job_portalfp.model.Educationalinfo;
import com.rumana.job_portalfp.model.Emphistory;
import com.rumana.job_portalfp.model.Personalinfo;
import com.rumana.job_portalfp.model.Skill;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author B10
 */
@Controller
public class CvController {
  
    
    @Autowired
    PersonalinfoService pis;
    @Autowired
    Userservice us;   
    
    @Autowired
    SkillService sl;
    
     @Autowired
    EducationalinfoService eduinfo;
    @Autowired
    EmphistoryService emhts;
    
    @Autowired
    JobappliedService jas;
    
    
    @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "dateofbirth", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    
    @InitBinder
    public void myInitBinderedu(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy");
        binder.registerCustomEditor(Date.class, "passingyear", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    
    
    @InitBinder
    public void myInitBinderjob1(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "startdate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    @InitBinder
    public void myInitBinderjob2(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "enddate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    
    
     @RequestMapping("/employeeprofilepage")
    public ModelAndView showeducationalinfopage(HttpSession session, @RequestParam("geteducid") int educainid) {
        Educationalinfo educationalinfolist = eduinfo.viewOneEducationalinfo(educainid);
        Emphistory emphistorylist = emhts.viewOneEmphistory(educainid);
        Skill skilllist = sl.viewOneSkill(educainid);
        Personalinfo personalinfolist = pis.viewOnePersonalinfo(educainid);
        String userlist = us.viewUsers();
        String jobappliedlist = jas.viewJobapplied();
        
        ModelAndView mv = new ModelAndView("addeducationalinfo", "educationalinfoObject", new Educationalinfo());
        mv.addObject("educationalinfolists", educationalinfolist);
        mv.addObject("emphistorylists", emphistorylist);      
        mv.addObject("personalinfolists", personalinfolist);      
        mv.addObject("skilllists", skilllist);      
        mv.addObject("userlists", userlist);
        mv.addObject("jobappliedlists", jobappliedlist);
        
        mv.addObject("check", "true");
        return mv;
    }
    
    
    
    
    
    
    
    
}
