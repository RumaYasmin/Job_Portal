/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.dao;

import com.rumana.job_portalfp.model.Educationalinfo;
import org.springframework.stereotype.Service;

/**
 *
 * @author USER
 */
@Service
public interface EducationalinfoService {
     
    public String insertEducationalinfo(Educationalinfo educationalinfo);

    public String updateEducationalinfo(int eduid, Educationalinfo educationalinfo);

    public String deleteEducationalinfo(int eduid);

    public String viewEducationalinfo();

    public Educationalinfo viewOneEducationalinfo(int eduid);
    
    
    
}
