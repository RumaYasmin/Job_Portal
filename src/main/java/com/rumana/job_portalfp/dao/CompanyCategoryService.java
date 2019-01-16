/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.dao;

import com.rumana.job_portalfp.model.CompanyCategory;
import org.springframework.stereotype.Service;

/**
 *
 * @author User
 */
@Service
public interface CompanyCategoryService {
    public String insertCompanyCategory(CompanyCategory cm);

    public String updateCompanyCategory(CompanyCategory cm);

    public String deleteCompanyCategory(String id);

    public String viewCompanyCategory();

    public CompanyCategory viewOneCompanyCategory(String id);
}
