/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.controllers;

import com.n15.service.UserService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author vohuy
 */
@Controller
public class UserController {
    
    @Autowired
    private UserService userDetailsService;
    @RequestMapping("/login")
    public String login(HttpSession session)
    {
        if(session.getAttribute("currentUser") == null)
            return "login";
        else
            return "redirect:/";
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
    
    @RequestMapping("/editProfileBasic")
    public String editProfileBasic()
    {
        return "editProfileBasic";
    }
    @RequestMapping("/editPassword")
    public String editPassword()
    {
        return "editPassword";
    }
    @RequestMapping("/notification")
    public String notification()
    {
        return "notification";
    }
    @RequestMapping("/insights")
    public String insights()
    {
        return "insights";
    }
    @RequestMapping("/shop")
    public String shop()
    {
        return "shop";
    }
    @RequestMapping("/shopDetail")
    public String shopDetail()
    {
        return "shopDetail";
    }
    @RequestMapping("/shopCart")
    public String shopCart()
    {
        return "shopCart";
    }
    @RequestMapping("/shopCheckout")
    public String shopCheckout()
    {
        return "shopCheckout";
    }
}
