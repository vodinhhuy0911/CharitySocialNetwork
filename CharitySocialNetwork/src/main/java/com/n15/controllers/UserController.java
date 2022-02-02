/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author vohuy
 */
@Controller
public class UserController {
    
    @RequestMapping("/login")
    public String login()
    {
        return "loginLayout";
    }
    
    @RequestMapping("/register")
    public String register()
    {
        return "register";
    }
    
    @RequestMapping("/timeline")
    public String timeline()
    {
        return "timeline";
    }
    
    @RequestMapping("/message")
    public String message()
    {
        return "message";
    }
}
