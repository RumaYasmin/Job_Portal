/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.dao;

import com.rumana.job_portalfp.model.Jobapplied;
import com.rumana.job_portalfp.model.Jobpost;
import org.springframework.stereotype.Service;

/**
 *
 * @author B10
 */
@Service
public interface JobappliedService {
    
    public String insertJobapplied(Jobapplied jobapplied);

    public String updateJobapplied(int applyid, Jobapplied jobapplied);

    public String deleteJobapplied(int applyid);

    public String viewJobapplied();

    public Jobapplied viewOneJobapplied(int applyid);
    
}
