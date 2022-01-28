/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.controllers;

import com.sun.security.auth.UserPrincipal;
import java.util.Map;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author vohuy
 */
@Controller
public class HomeController {
    
    
    @RequestMapping("/")
    public String index(Model model, HttpSession session)
    {
//        return "index";
        if(session.getAttribute("currentUser") == null)
            return "login";
        else
            return "index";
    }
}
