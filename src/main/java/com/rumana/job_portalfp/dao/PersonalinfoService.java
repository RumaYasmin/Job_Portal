/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.dao;


import com.rumana.job_portalfp.model.Personalinfo;
import org.springframework.stereotype.Service;

/**
 *
 * @author USER
 */
@Service
public interface PersonalinfoService {
    public String insertPersonalinfo(Personalinfo personalinfo);

    public String updatePersonalinfo(int persinfoid, Personalinfo personalinfo);

    public String deletePersonalinfo(int persinfoid);

    public String viewPersonalinfo();

    public Personalinfo viewOnePersonalinfo(int persinfoid);
    
}
