/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.service;

import com.n15.pojos.User;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author vohuy
 */
public interface UserService extends UserDetailsService{
    public List<User> getUser(String keyword);
}
