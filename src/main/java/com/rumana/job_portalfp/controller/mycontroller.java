/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.controller;

import com.rumana.job_portalfp.dao.EmployerService;
import com.rumana.job_portalfp.dao.JobCategoryService;
import com.rumana.job_portalfp.dao.JobpostService;
import com.rumana.job_portalfp.model.Jobpost;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author B10
 */
@Controller
public class mycontroller {
    
     @Autowired
    JobpostService jps;
    @Autowired
    EmployerService es;
    @Autowired
    JobCategoryService jcs;
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView welcome(){
     String jobpostlist = jps.viewJobpost();
        String employerlist = es.viewEmployer();
        String jobcategorylist = jcs.viewJobCategory();

        ModelAndView mv = new ModelAndView("index", "JobpostObject", new Jobpost());
        mv.addObject("jobpostlists", jobpostlist);
        mv.addObject("employerlists", employerlist);
        mv.addObject("jobcategorylists", jobcategorylist);

        mv.addObject("check", "true");
        return mv;
    }
    
}
