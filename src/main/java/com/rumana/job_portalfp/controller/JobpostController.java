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
public class JobpostController {

    @Autowired
    JobpostService jps;
    @Autowired
    EmployerService es;
    @Autowired
    JobCategoryService jcs;
    
     @InitBinder
    public void myInitBinder(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "startdate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    
    @InitBinder
    public void myInitBinderenddate(WebDataBinder binder) {
        //binder.setDisallowedFields(new String[]{"empMobile"});
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        binder.registerCustomEditor(Date.class, "enddate", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(String.class, "ename", new EmployeeNameEditor());
    }
    
    @RequestMapping("/showjobpostpage")
    public ModelAndView showjobpostpage() {
        String jobpostlist = jps.viewJobpost();
        String employerlist = es.viewEmployer();
        String jobcategorylist = jcs.viewJobCategory();

        ModelAndView mv = new ModelAndView("addjobpost", "JobpostObject", new Jobpost());
        mv.addObject("jobpostlists", jobpostlist);
        mv.addObject("employerlists", employerlist);
        mv.addObject("jobcategorylists", jobcategorylist);

        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/Jobpost", params = "Add")
    public String addjobpost(@ModelAttribute("JobpostObject") Jobpost jobpostid, HttpServletRequest request) {
        jps.insertJobpost(jobpostid);

        return "redirect:/showjobpostpage";
    }

    @RequestMapping(value = "/Jobpost", params = "Edit")
    public String editjobpost(@ModelAttribute("JobpostObject") Jobpost jobpostid, HttpServletRequest request) {
        jps.updateJobpost(jobpostid.getJobpostid(), jobpostid);

        return "redirect:/showjobpostpage";
    }

    @RequestMapping("removingjobpost/{jprid}")
    public String removejobpost(@PathVariable("jprid") int jprid) {
        jps.deleteJobpost(jprid);
        return "redirect:/showjobpostpage";
    }

    @RequestMapping("/editingjobpost")
    public ModelAndView editonejobpost(@RequestParam("getjpid") int jprid) {
        String jobpostlist = jps.viewJobpost();
        String employerlist = es.viewEmployer();
        String jobcategorylist = jcs.viewJobCategory();

        ModelAndView mv = new ModelAndView("addjobpost", "JobpostObject", jps.viewOneJobpost(jprid));
        mv.addObject("jobpostlists", jobpostlist);
        mv.addObject("employerlists", employerlist);
        mv.addObject("jobcategorylists", jobcategorylist);

        mv.addObject("check", "false");
        return mv;
    }
    
    @RequestMapping("/seejobpostpage")
    public ModelAndView seejobpostpage() {
        String jobpostlist = jps.viewJobpost();
        String employerlist = es.viewEmployer();
        String jobcategorylist = jcs.viewJobCategory();

        ModelAndView mv = new ModelAndView("seejobpost", "JobpostObject", new Jobpost());
        mv.addObject("jobpostlists", jobpostlist);
        mv.addObject("employerlists", employerlist);
        mv.addObject("jobcategorylists", jobcategorylist);

        mv.addObject("check", "true");
        return mv;
    }

}
