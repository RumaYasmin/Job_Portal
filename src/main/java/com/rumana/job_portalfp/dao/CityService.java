/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.dao;

import com.rumana.job_portalfp.model.City;
import org.springframework.stereotype.Service;

/**
 *
 * @author B10
 */
@Service
public interface CityService {
    
    public String insertCity(City c);

    public Integer updateCity(int city_id, City c);

    public Integer deleteCity(int city_id);

    public String viewCity();

    public City viewOneCity(int city_id);
    
}
