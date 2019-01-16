/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.controller;

import com.rumana.job_portalfp.dao.CountryService;
import com.rumana.job_portalfp.model.Country;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author User
 */
@Controller
public class CountryController {

    @Autowired
    CountryService coun;

    @RequestMapping("/showingcountrypage")
    public ModelAndView showcounpage() {
        String countrygsonlist = coun.viewCountry();
        ModelAndView mv = new ModelAndView("addcountry", "addCountryObject1", new Country());
        mv.addObject("countrymodelobject", countrygsonlist);
        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/addingcountry", params = "Addcountry")
    public String addcountry(@ModelAttribute("addCountryObject1") Country cm) {       
        coun.insertCountry(cm);      
        return "redirect:/showingcountrypage";
    }

    @RequestMapping(value = "/addingcountry", params = "EditCountry")
    public String editcountry(@ModelAttribute("addCountryObject1") Country cm) {
        coun.updateCountry(cm);
        return "redirect:/showingcountrypage";
    }

    @RequestMapping("removecountry/{Id}")
    public String removecategory(@PathVariable("Id") String countryId) {
        coun.deleteCountry(countryId);
        return "redirect:/showingcountrypage";
    }

    @RequestMapping("/editcountrybutton")
    public ModelAndView passingonecountry(@RequestParam("getcid") String countryId) {

        Country onecountry = coun.viewOneCountry(countryId);
        String countrygsonlist = coun.viewCountry();
        ModelAndView mv = new ModelAndView("addcountry", "addCountryObject1", onecountry);
        mv.addObject("countrymodelobject", countrygsonlist);
        mv.addObject("check", "false");
        return mv;
    }
}
