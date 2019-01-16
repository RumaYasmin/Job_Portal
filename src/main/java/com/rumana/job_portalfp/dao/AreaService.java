/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.dao;

import com.rumana.job_portalfp.model.Area;

/**
 *
 * @author B10
 */
public interface AreaService {
    public String insertArea(Area ar);

    public Integer updateArea(int area_id, Area ar);

    public Integer deleteArea(int area_id);

    public String viewArea();

    public Area viewOneArea(int area_id);
}
