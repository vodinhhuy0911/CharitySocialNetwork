/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.controllers;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author vohuy
 */
@Controller
public class HomeController {
    
    @RequestMapping("/")
    public String index(Model model, HttpSession session)
    {
        if(session.getAttribute("currentUser") == null)
            return"redirect:/login";
        else
            return "indexLayout";
    }
}
