/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.dao;

import com.rumana.job_portalfp.model.Employer;
import org.springframework.stereotype.Service;

/**
 *
 * @author USER
 */
@Service
public interface EmployerService {

    public String insertEmployer(Employer employer);

    public String updateEmployer(int empid, Employer employer);

    public String deleteEmployer(int empid);

    public String viewEmployer();

    public Employer viewOneEmployer(int empid);
}
