/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.controller;


import com.rumana.job_portalfp.dao.EducationalinfoService;
import com.rumana.job_portalfp.dao.Userservice;
import com.rumana.job_portalfp.model.Educationalinfo;
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
 * @author USER
 */
@Controller
public class EducationalinfoController {
    @Autowired
    EducationalinfoService eduinfo;
    @Autowired
    Userservice us;
    
     @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "passingyear", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    
      @RequestMapping("/showeeducationalinfopage")
    public ModelAndView showeducationalinfopage() {
        String educationalinfolist = eduinfo.viewEducationalinfo();
        String userlist = us.viewUsers();  
        ModelAndView mv = new ModelAndView("addeducationalinfo", "educationalinfoObject", new Educationalinfo());
        mv.addObject("educationalinfolists", educationalinfolist);
        mv.addObject("userlists", userlist);      
        mv.addObject("check", "true");
        return mv;
    }
    
    @RequestMapping(value = "/Educationalinfo", params = "Add")
    public String addeducationalinfo(@ModelAttribute("educationalinfoObject") Educationalinfo eduid, HttpServletRequest request) {
        eduinfo.insertEducationalinfo(eduid);

        return "redirect:/showeeducationalinfopage";
    }
    
     @RequestMapping(value = "/Educationalinfo", params = "Edit")
    public String editeducationalinfo(@ModelAttribute("educationalinfoObject") Educationalinfo eduid, HttpServletRequest request) {
        eduinfo.updateEducationalinfo(eduid.getEduid(), eduid);

        return "redirect:/showeeducationalinfopage";
    }
    
     @RequestMapping("removingeducationalinfo/{educainid}")
    public String removeeducationalinfo(@PathVariable("educainid") int educainid) {
        eduinfo.deleteEducationalinfo(educainid);
        return "redirect:/showeeducationalinfopage";
    }
    
     @RequestMapping("/editingeducationalinfo")
    public ModelAndView editoneeducationalinfo(@RequestParam("geteducid") int educainid) {
        String educationalinfolist = eduinfo.viewEducationalinfo();
        String userlist = us.viewUsers();
        ModelAndView mv = new ModelAndView("addeducationalinfo", "educationalinfoObject", eduinfo.viewOneEducationalinfo(educainid));
        mv.addObject("educationalinfolists", educationalinfolist);
        mv.addObject("userlists", userlist);
        mv.addObject("check", "false");
        return mv;
    }
}
