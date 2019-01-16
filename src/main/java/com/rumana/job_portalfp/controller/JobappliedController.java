/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.controller;

import com.rumana.job_portalfp.dao.JobappliedService;
import com.rumana.job_portalfp.dao.JobpostService;
import com.rumana.job_portalfp.dao.Userservice;
import com.rumana.job_portalfp.model.Jobapplied;
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
public class JobappliedController {

    @Autowired
    JobappliedService jas;
    @Autowired
    Userservice us;
    @Autowired
    JobpostService jps;

    @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "applydate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }

    @RequestMapping("/showjobappliedpage")
    public ModelAndView showjobappliedpage() {
        String jobappliedlist = jas.viewJobapplied();
        String userlist = us.viewUsers();
        String jobpostlist = jps.viewJobpost();

        ModelAndView mv = new ModelAndView("addjobapplied", "JobappliedObject", new Jobapplied());
        mv.addObject("jobappliedlists", jobappliedlist);
        mv.addObject("userlists", userlist);
        mv.addObject("jobpostlists", jobpostlist);

        mv.addObject("check", "true");
        return mv;
    }
    
    @RequestMapping(value = "/Jobapplied", params = "Add")
    public String addjobpost(@ModelAttribute("JobappliedObject") Jobapplied applyid, HttpServletRequest request) {
        jas.insertJobapplied(applyid);

        return "redirect:/showjobappliedpage";
    }
    
    @RequestMapping(value = "/Jobapplied", params = "Edit")
    public String editjobpost(@ModelAttribute("JobappliedObject") Jobapplied applyid, HttpServletRequest request) {
        jas.updateJobapplied(applyid.getApplyid(), applyid);

        return "redirect:/showjobappliedpage";
    }
    
    @RequestMapping("removingjobapplie/{jprid}")
    public String removejobapplie(@PathVariable("jarid") int jarid) {
        jas.deleteJobapplied(jarid);
        return "redirect:/showjobappliedpage";
    }
    
    @RequestMapping("/editingjobapplie")
    public ModelAndView editonejobapplie(@RequestParam("getjaid") int jarid) {
        String jobappliedlist = jas.viewJobapplied();
        String userlist = us.viewUsers();
        String jobpostlist = jps.viewJobpost();

        ModelAndView mv = new ModelAndView("addjobapplied", "JobappliedObject", jas.viewOneJobapplied(jarid));
        mv.addObject("jobappliedlists", jobappliedlist);
        mv.addObject("userlists", userlist);
        mv.addObject("jobpostlists", jobpostlist);

        mv.addObject("check", "false");
        return mv;
    }

}
