/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.controller;

import com.rumana.job_portalfp.dao.CountryService;
import com.rumana.job_portalfp.dao.StateService;
import com.rumana.job_portalfp.model.State;
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
 * @author User
 */
@Controller
public class StateController {

    @Autowired
    StateService st;
    @Autowired
    CountryService cm;
    @Autowired
    private ServletContext servletContext;

    @RequestMapping("/showstatepage")
    public ModelAndView showstate() {
        String statelist = st.viewState();
        String CountryServicelist = cm.viewCountry();

        ModelAndView mv = new ModelAndView("addstate", "newStateObject", new State());
        mv.addObject("statelist", statelist);
        mv.addObject("countryServicelist", CountryServicelist);

        mv.addObject("check", "true");
        return mv;
    }

    @RequestMapping(value = "/stateadd", params = "Add")
    public String addstatepage(@ModelAttribute("newStateObject") State state, HttpServletRequest request) {
        st.insertState(state);

        return "redirect:/showstatepage";
    }

    @RequestMapping(value = "/stateadd", params = "Edit")
    public String editState(@ModelAttribute("newStateObject") State state, HttpServletRequest request) {
        st.updateState(state.getState_id(), state);

        return "redirect:/showstatepage";
    }

    @RequestMapping("removingstate/{stateId}")
    public String removestate(@PathVariable("stateId") int state_id) {
        st.deleteState(state_id);
        return "redirect:/showstatepage";
    }

    @RequestMapping("/editingstate")
    public ModelAndView editstatepage(@RequestParam("getsid") int state_id) {
        String statelist = st.viewState();
        String CountryServicelist = cm.viewCountry();
        ModelAndView mv = new ModelAndView("addstate", "newStateObject", st.viewOneState(state_id));
        mv.addObject("statelist", statelist);
        mv.addObject("countryServicelist", CountryServicelist);
        mv.addObject("check", "false");
        return mv;
    }
}
