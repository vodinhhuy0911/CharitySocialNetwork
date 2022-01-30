/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.controllers;

import com.n15.pojos.User;
import com.n15.service.UserService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
    public String login(HttpSession session) {
        if(session.getAttribute("currentUser") == null)
            return "login";
        else
            return "index";
    }
    @GetMapping("/register")
    public String registerView(Model model){
        model.addAttribute("user",new User());
        return "register";
    }
    @PostMapping("/register")
    public String register(Model model,@ModelAttribute (value="user") User user)
    {
        //làm trong validar
        String errMsg = null;
        if(user.getPassword().equals(user.getConfirmPassword()))
        {
            if(this.userDetailsService.addUser(user))
                return "redirect:/login";
            else
                errMsg="dang ky khong thanh cong";
        }
        else
        {
            errMsg = "Mat khau khong khop";
        } 
        model.addAttribute("errMsg",errMsg);
        return "login";
    }
}
