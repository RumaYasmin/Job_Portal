/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.controller;

import com.rumana.job_portalfp.dao.AreaService;
import com.rumana.job_portalfp.dao.CompanyCategoryService;
import com.rumana.job_portalfp.dao.EmployerService;
import com.rumana.job_portalfp.dao.Userservice;
import com.rumana.job_portalfp.model.Employer;
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
 * @author USER
 */
@Controller
public class EmployerController {

    @Autowired
    EmployerService emps;
    @Autowired
    Userservice us;
    @Autowired
    CompanyCategoryService comcats;
    @Autowired
    AreaService ars;
    
    @RequestMapping("/showemployerpage")
    public ModelAndView showemployerpage() {
        String employerlist = emps.viewEmployer();
        String userlist = us.viewUsers();
        String companycategorieslist = comcats.viewCompanyCategory();
        String arealist = ars.viewArea();

        ModelAndView mv = new ModelAndView("addemployer", "employerObject", new Employer());
        mv.addObject("employerlists", employerlist);
        mv.addObject("userlists", userlist);
        mv.addObject("companycategorieslists", companycategorieslist);
        mv.addObject("arealists", arealist);

        mv.addObject("check", "true");
        return mv;
    }
    
    @RequestMapping(value = "/Employer", params = "Add")
    public String addemployer(@ModelAttribute("employerObject") Employer empid, HttpServletRequest request) {
        emps.insertEmployer(empid);

        return "redirect:/showemployerpage";
    }
    
    @RequestMapping(value = "/Employer", params = "Edit")
    public String editemployer(@ModelAttribute("employerObject") Employer empid, HttpServletRequest request) {
        emps.updateEmployer(empid.getEmpid(), empid);

        return "redirect:/showemployerpage";
    }
    
    @RequestMapping("removingemployer/{emprid}")
    public String removeemployer(@PathVariable("emprid") int empid) {
        emps.deleteEmployer(empid);
        return "redirect:/showemployerpage";
    }
    
    @RequestMapping("/editingemployer")
    public ModelAndView editoneemployer(@RequestParam("getemid") int emprid) {
        String employerlist = emps.viewEmployer();
        String userlist = us.viewUsers();
        String companycategorieslist = comcats.viewCompanyCategory();
        String arealist = ars.viewArea();
        ModelAndView mv = new ModelAndView("addemployer", "employerObject", emps.viewOneEmployer(emprid));
        mv.addObject("employerlists", employerlist);
        mv.addObject("userlists", userlist);
        mv.addObject("companycategorieslists", companycategorieslist);
        mv.addObject("arealists", arealist);
        mv.addObject("check", "false");
        return mv;
    }

}
