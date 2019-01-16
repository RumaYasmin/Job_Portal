/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.controller;

import com.rumana.job_portalfp.dao.AreaService;
import com.rumana.job_portalfp.dao.CityService;
import com.rumana.job_portalfp.model.Area;
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
public class AreaController {

    @Autowired
    AreaService ar;
    @Autowired
    CityService cs;
    @Autowired
    private ServletContext servletContext;

    @RequestMapping("/showareapage")
    public ModelAndView showarea() {
        String arealist = ar.viewArea();
        String CityServicelist = cs.viewCity();

        ModelAndView mv = new ModelAndView("addarea", "newAreaObject", new Area());
        mv.addObject("arealist", arealist);
        mv.addObject("CityServicelist", CityServicelist);

        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/areaadd", params = "Add")
    public String addareapage(@ModelAttribute("newAreaObject") Area area, HttpServletRequest request) {
        ar.insertArea(area);

        return "redirect:/showareapage";
    }

    @RequestMapping(value = "/areaadd", params = "Edit")
    public String editArea(@ModelAttribute("newAreaObject") Area area, HttpServletRequest request) {
        ar.updateArea(area.getArea_id(), area);

        return "redirect:/showareapage";
    }

    @RequestMapping("removingarea/{areaId}")
    public String removearea(@PathVariable("areaId") int areaid) {
        ar.deleteArea(areaid);
        return "redirect:/showareapage";
    }

    @RequestMapping("/editingarea")
    public ModelAndView editareapage(@RequestParam("getaid") int pid) {
       String arealist = ar.viewArea();
        String CityServicelist = cs.viewCity();
        ModelAndView mv = new ModelAndView("addarea", "newAreaObject", ar.viewOneArea(pid));
           mv.addObject("arealist", arealist);
        mv.addObject("CityServicelist", CityServicelist);
        mv.addObject("check", "false");
        return mv;
    }
}
