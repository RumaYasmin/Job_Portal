/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.dao;

import com.rumana.job_portalfp.model.JobCategory;
import org.springframework.stereotype.Service;

/**
 *
 * @author USER
 */
@Service
public interface JobCategoryService {
     public String insertJobCategory(JobCategory jc);

    public String updateJobCategory(JobCategory jc);

    public String deleteJobCategory(String id);

    public String viewJobCategory();

    public JobCategory viewOneJobCategory(String id);
    
}
