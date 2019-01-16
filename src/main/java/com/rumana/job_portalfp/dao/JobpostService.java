/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.dao;

import com.rumana.job_portalfp.model.Jobpost;
import org.springframework.stereotype.Service;

/**
 *
 * @author B10
 */
@Service
public interface JobpostService {

    public String insertJobpost(Jobpost jobpost);

    public String updateJobpost(int jobpostid, Jobpost jobpost);

    public String deleteJobpost(int jobpostid);

    public String viewJobpost();

    public Jobpost viewOneJobpost(int jobpostid);
}
