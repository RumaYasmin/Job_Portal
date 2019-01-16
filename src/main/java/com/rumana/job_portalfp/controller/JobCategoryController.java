/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.controller;

import com.rumana.job_portalfp.dao.JobCategoryService;
import com.rumana.job_portalfp.model.JobCategory;
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
public class JobCategoryController {
    
    @Autowired
    JobCategoryService jobcat;
    
    @RequestMapping("/showingjobcategorypage")
    public ModelAndView showjobcatpage() {
        String jobcategorygsonlist = jobcat.viewJobCategory();
        ModelAndView mv = new ModelAndView("addjobcategory", "addJobCategoryObject1", new JobCategory());
        mv.addObject("jobcategorymodelobject", jobcategorygsonlist);
        mv.addObject("check", "true");
        return mv;
    }
    
    @RequestMapping(value = "/addingjobcategory", params = "Addjobcategory")
    public String addjobcategory(@ModelAttribute("addJobCategoryObject1") JobCategory jc) {
        //String jobcategorygsonlist = cdao.viewJobCategory();
        //ModelAndView mv =new ModelAndView("AddJobCategory");
        jobcat.insertJobCategory(jc);
        //mv.addObject("jobcategorymodelobject", jobcategorygsonlist);
        return "redirect:/showingjobcategorypage";
    }
    
    @RequestMapping(value = "/addingjobcategory", params = "EditJobCategory")
    public String editjobcategory(@ModelAttribute("addJobCategoryObject1") JobCategory jc) {

        //ModelAndView mv =new ModelAndView("AddCategory");
        jobcat.updateJobCategory(jc);
        return "redirect:/showingjobcategorypage";
    }
    
     @RequestMapping("removejobcategory/{Id}")
    public String removejobcategory(@PathVariable("Id") String jobcategoryId) {
        jobcat.deleteJobCategory(jobcategoryId);
        return "redirect:/showingjobcategorypage";
    }
    
    @RequestMapping("/editjobcategorybutton")
    public ModelAndView passingonejobcategory(@RequestParam("getjcid") String jobcategoryId) {

        JobCategory onejobcategory = jobcat.viewOneJobCategory(jobcategoryId);
        String jobcategorygsonlist = jobcat.viewJobCategory();
        ModelAndView mv = new ModelAndView("addjobcategory", "addJobCategoryObject1", onejobcategory);
        mv.addObject("jobcategorymodelobject", jobcategorygsonlist);
        mv.addObject("check", "false");
        return mv;
    }
    
}
