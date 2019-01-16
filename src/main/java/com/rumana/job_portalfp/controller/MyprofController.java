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
public class MyprofController {
   @RequestMapping("/showmyprofpage")
    public ModelAndView myprofpage() {
        ModelAndView mv = new ModelAndView("myprof");
        
        return mv;
    }   
}
