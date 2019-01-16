/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.controller;

import com.rumana.job_portalfp.dao.PersonalinfoService;
import com.rumana.job_portalfp.dao.Userservice;
import com.rumana.job_portalfp.model.Personalinfo;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
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
public class PersonalinfoController {
    
    @Autowired
    PersonalinfoService pis;
    @Autowired
    Userservice us;
    
      @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "dofbirth", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    
    @RequestMapping("/showpersonalinfopage")
    public ModelAndView showpersonalinfopage() {
        String personalinfolist = pis.viewPersonalinfo();
        String userlist = us.viewUsers();
       
        ModelAndView mv = new ModelAndView("addpersonalinfo", "PersonalinfoObject", new Personalinfo());
        mv.addObject("personalinfolists", personalinfolist);
        mv.addObject("userlists", userlist);
        mv.addObject("check", "true");
        return mv;
    }
    
    @RequestMapping(value = "/Personalinfo", params = "Add")
    public String addpersonalinfo(@ModelAttribute("PersonalinfoObject") Personalinfo persinfoid, HttpServletRequest request) {
        pis.insertPersonalinfo(persinfoid);

        return "redirect:/showpersonalinfopage";
    }
    
    @RequestMapping(value = "/Personalinfo", params = "Edit")
    public String editemployer(@ModelAttribute("PersonalinfoObject") Personalinfo persinfoid, HttpServletRequest request) {
        pis.updatePersonalinfo(persinfoid.getPersinfoid(), persinfoid);

        return "redirect:/showpersonalinfopage";
    }
    
    @RequestMapping("removingpersonalinfo/{persid}")
    public String removepersonalinfo(@PathVariable("persid") int persid) {
        pis.deletePersonalinfo(persid);
        return "redirect:/showpersonalinfopage";
    }
    
    @RequestMapping("/editingpersonalinfo")
    public ModelAndView editonepersonalinfo(@RequestParam("getperid") int persid) {
        String personalinfolist = pis.viewPersonalinfo();
        String userlist = us.viewUsers();
        ModelAndView mv = new ModelAndView("addpersonalinfo", "PersonalinfoObject", pis.viewOnePersonalinfo(persid));
        mv.addObject("personalinfolists", personalinfolist);
        mv.addObject("userlists", userlist);
        mv.addObject("check", "false");
        return mv;
    }
}
