/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.dao;

import com.rumana.job_portalfp.model.Emphistory;
import org.springframework.stereotype.Service;

/**
 *
 * @author B10
 */
@Service
public interface EmphistoryService {

    public String insertEmphistory(Emphistory emphistory);

    public String updateEmphistory(int emphisid, Emphistory emphistory);

    public String deleteEmphistory(int emphisid);

    public String viewEmphistory();

    public Emphistory viewOneEmphistory(int emphisid);

}
