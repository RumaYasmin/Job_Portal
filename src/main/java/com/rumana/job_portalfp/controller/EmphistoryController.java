/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.controller;

import com.rumana.job_portalfp.dao.CompanyCategoryService;
import com.rumana.job_portalfp.dao.EmphistoryService;
import com.rumana.job_portalfp.dao.Userservice;
import com.rumana.job_portalfp.model.Emphistory;
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
public class EmphistoryController {
    
    @Autowired
    EmphistoryService emhts;
    @Autowired
    Userservice us;
    @Autowired
    CompanyCategoryService comcats;
    
     @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "fromdate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
     @InitBinder
    public void mytoInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "todate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    
    @RequestMapping("/showemphistorypage")
    public ModelAndView showemphistorypage() {
        String emphistorylist = emhts.viewEmphistory();
        String userlist = us.viewUsers();
        String comcategorylist = comcats.viewCompanyCategory();

        ModelAndView mv = new ModelAndView("addemphistory", "EmphistoryObject", new Emphistory());
        mv.addObject("emphistorylists", emphistorylist);
        mv.addObject("userlists", userlist);
        mv.addObject("comcategorylists", comcategorylist);

        mv.addObject("check", "true");
        return mv;
    }
    
    @RequestMapping(value = "/Emphistory", params = "Add")
    public String addemphistory(@ModelAttribute("EmphistoryObject") Emphistory emphistory, HttpServletRequest request) {
        emhts.insertEmphistory(emphistory);

        return "redirect:/showemphistorypage";
    }
    
    @RequestMapping(value = "/Emphistory", params = "Edit")
    public String editemphistory(@ModelAttribute("EmphistoryObject") Emphistory emphisid, HttpServletRequest request) {
        emhts.updateEmphistory(emphisid.getEmphisid(), emphisid);

        return "redirect:/showemphistorypage";
    }
    
    @RequestMapping("removingemphistory/{emhisid}")
    public String removeemphistory(@PathVariable("emhisid") int emhisid) {
        emhts.deleteEmphistory(emhisid);
        return "redirect:/showemphistorypage";
    }
    
    @RequestMapping("/editingemphistory")
    public ModelAndView editonejobpost(@RequestParam("getemhisid") int emhisid) {
        String emphistorylist = emhts.viewEmphistory();
        String userlist = us.viewUsers();
        String comcategorylist = comcats.viewCompanyCategory();

        ModelAndView mv = new ModelAndView("addemphistory", "EmphistoryObject", emhts.viewOneEmphistory(emhisid));
        mv.addObject("emphistorylists", emphistorylist);
        mv.addObject("userlists", userlist);
        mv.addObject("comcategorylists", comcategorylist);

        mv.addObject("check", "false");
        return mv;
    }
}
