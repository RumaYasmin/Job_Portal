/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.dao;


import com.rumana.job_portalfp.model.Country;
import org.springframework.stereotype.Service;

/**
 *
 * @author User
 */
@Service
public interface CountryService {
    public String insertCountry(Country cm);

    public String updateCountry(Country cm);

    public String deleteCountry(String id);

    public String viewCountry();

    public Country viewOneCountry(String id);
}
