/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.controller;

import com.rumana.job_portalfp.model.CompanyCategory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.rumana.job_portalfp.dao.CompanyCategoryService;

/**
 *
 * @author User
 */
@Controller
public class CompanyCategoryController {

    @Autowired
    CompanyCategoryService comcat;

    @RequestMapping("/showingcompanycategorypage")
    public ModelAndView showcomcatpage() {
        String companycategorygsonlist = comcat.viewCompanyCategory();
        ModelAndView mv = new ModelAndView("addcompanycategory", "addCompanyCategoryObject1", new CompanyCategory());
        mv.addObject("companycategorymodelobject", companycategorygsonlist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addingcompanycategory", params = "Addcompanycategory")
    public String addcompanycategory(@ModelAttribute("addCompanyCategoryObject1") CompanyCategory cm) {
        //String categorygsonlist = cdao.viewCategory();
        //ModelAndView mv =new ModelAndView("AddCategory");
        comcat.insertCompanyCategory(cm);
        //mv.addObject("categorymodelobject", categorygsonlist);
        return "redirect:/showingcompanycategorypage";
    }

    @RequestMapping(value = "/addingcompanycategory", params = "EditCompanyCategory")
    public String editcompanycategory(@ModelAttribute("addCompanyCategoryObject1") CompanyCategory cm) {

        //ModelAndView mv =new ModelAndView("AddCategory");
        comcat.updateCompanyCategory(cm);
        return "redirect:/showingcompanycategorypage";
    }

    @RequestMapping("removecompanycategory/{Id}")
    public String removecompanycategory(@PathVariable("Id") String companycategoryId) {
        comcat.deleteCompanyCategory(companycategoryId);
        return "redirect:/showingcompanycategorypage";
    }

    @RequestMapping("/editcompanycategorybutton")
    public ModelAndView passingonecompanycategory(@RequestParam("getcid") String companycategoryId) {

        CompanyCategory onecompanycategory = comcat.viewOneCompanyCategory(companycategoryId);
        String companycategorygsonlist = comcat.viewCompanyCategory();
        ModelAndView mv = new ModelAndView("addcompanycategory", "addCompanyCategoryObject1", onecompanycategory);
        mv.addObject("companycategorymodelobject", companycategorygsonlist);
        mv.addObject("check", "false");
        return mv;
    }
}
