package com.rumana.job_portalfp.controller;

import com.rumana.job_portalfp.dao.Userservice;
import com.rumana.job_portalfp.model.User;
import java.util.Collection;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

    @Autowired
    Userservice user;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLogin() {
        return "login";
    }

    @RequestMapping(value = "/adminwelcome", method = RequestMethod.GET)
    public String showWelcome() {
        return "adminwelcome";
    }
    
   @RequestMapping(value = "/employeeprofiles", method = RequestMethod.GET)
    public String showemployeeWelcome() {
        return "employeeprofile";
    }
    
    @RequestMapping(value = "/employerwelcome", method = RequestMethod.GET)
    public String showemployerWelcome() {
        return "employerwelcome";
    }

    @RequestMapping(value = "/loginsuccess")
    public String loginsuccess(HttpSession session) {
        System.out.println("success..........");

        String userid = SecurityContextHolder.getContext().getAuthentication().getName();
        User us = user.viewUser(userid);
        Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
        String page = "";
        String role1 = "ROLE_ADMIN";
        String role2 = "ROLE_EMPLOYEE";
        String role3 = "ROLE_EMPLOYER";
        for (GrantedAuthority authority : authorities) {
            if (authority.getAuthority().equals(role1)) {
                session.setAttribute("UserLoggedIn", us.getUsername());
                session.setAttribute("phone", us.getPhone());
                
                session.setAttribute("UserId", userid);
                page= "redirect:/adminwelcome";
            }
           else if (authority.getAuthority().equals(role2)) {
               session.setAttribute("UserLoggedIn", us.getUsername());
                session.setAttribute("phone", us.getPhone());
                
                session.setAttribute("UserId", userid);
               page= "redirect:/employeeprofiles";
            }
            else if (authority.getAuthority().equals(role3)) {
                //session.setAttribute("UserLoggedIn", us.getUsername());
                session.setAttribute("phone", us.getPhone());
                
                session.setAttribute("UserId", userid);
                page= "redirect:/employerwelcome";
            }
       else{
            page= "redirect:/";
            }
        }
        return page;
    }
    
}
