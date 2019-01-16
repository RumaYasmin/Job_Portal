/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author USER
 */
@Controller
public class JobController {
  @RequestMapping("/showwelcomejobpage")
    public ModelAndView welcomejobpage() {
        ModelAndView mv = new ModelAndView("welcomejob");
        
        return mv;
    }  
}
