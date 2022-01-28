/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.configs.handlers;

import com.n15.pojos.User;
import com.n15.service.UserService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

/**
 *
 * @author vohuy
 */
@Component
public class LoginSuccesHandler implements AuthenticationSuccessHandler{

    @Autowired
    private UserService userDetailsService;
    
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication a) throws IOException, ServletException {
        
        User user = this.userDetailsService.getUser(a.getName()).get(0);
        request.getSession().setAttribute("currentUser", user);
        response.sendRedirect("/CharitySocialNetwork");
        
    }
    
}
