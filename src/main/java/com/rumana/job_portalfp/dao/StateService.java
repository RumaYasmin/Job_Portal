/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rumana.job_portalfp.dao;

import com.rumana.job_portalfp.model.State;
import org.springframework.stereotype.Service;

/**
 *
 * @author User
 */
@Service
public interface StateService {
    public String insertState(State st);

    public Integer updateState(int state_id, State st);

    public Integer deleteState(int state_id);

    public String viewState();

    public State viewOneState(int state_id);
}
