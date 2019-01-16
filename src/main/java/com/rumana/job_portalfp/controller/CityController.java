/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.controller;

import com.rumana.job_portalfp.dao.CityService;
import com.rumana.job_portalfp.dao.StateService;
import com.rumana.job_portalfp.model.City;
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
public class CityController {

    @Autowired
    CityService cs;
    @Autowired
    StateService st;
    @Autowired
    private ServletContext servletContext;

    @RequestMapping("/showcitypage")
    public ModelAndView showcity() {
        String citylist = cs.viewCity();
        String StateServicelist = st.viewState();

        ModelAndView mv = new ModelAndView("addcity", "newCityObject", new City());
        mv.addObject("citylist", citylist);
        mv.addObject("StateServicelist", StateServicelist);

        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/cityadd", params = "Add")
    public String addcitypage(@ModelAttribute("newCityObject") City city, HttpServletRequest request) {
        cs.insertCity(city);

        return "redirect:/showcitypage";
    }

    @RequestMapping(value = "/cityadd", params = "Edit")
    public String editCity(@ModelAttribute("newCityObject") City city, HttpServletRequest request) {
        cs.updateCity(city.getCity_id(), city);

        return "redirect:/showcitypage";
    }

    @RequestMapping("removingcity/{cityId}")
    public String removecity(@PathVariable("cityId") int city_id) {
        cs.deleteCity(city_id);
        return "redirect:/showcitypage";
    }

    @RequestMapping("/editingcity")
    public ModelAndView editcitypage(@RequestParam("getcid") int pid) {
        String citylist = cs.viewCity();
        String StateServicelist = st.viewState();
        ModelAndView mv = new ModelAndView("addcity", "newCityObject", cs.viewOneCity(pid));
        mv.addObject("citylist", citylist);
        mv.addObject("StateServicelist", StateServicelist);
        mv.addObject("check", "false");
        return mv;
    }
}
