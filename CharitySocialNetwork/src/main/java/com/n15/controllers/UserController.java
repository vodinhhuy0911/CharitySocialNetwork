/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.controllers;

import com.n15.pojos.User;
import com.n15.service.PostService;
import com.n15.service.UserService;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author vohuy
 */
@Controller
public class UserController {

    @Autowired
    private PostService postService;
    @Autowired
    private UserService userDetailsService;

    @ModelAttribute
    public void commonAttrs(Model model, HttpSession session)
    {
        session.getAttribute("currentUser");
    }
    
    @RequestMapping("/login")
    public String login(HttpSession session) {
        
        if (session.getAttribute("currentUser") == null) {
            return "login";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping("/register")
    public String registerView(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @PostMapping("/register")
    public String register(Model model, @ModelAttribute(value = "user") User user) {
        //làm trong validate confirm pass
        String error = null;
        if (user.getPassword().equals(user.getConfirmPassword())) {
            if (this.userDetailsService.addUser(user)) {
                return "redirect:/login";
            } else {
                error = "Đã có lỗi xảy ra";
            }
        } else {
            error = "Mật khẩu không khớp";
        }
        model.addAttribute("errorMsg", error);
        return "register";

    }

    @RequestMapping("/timeline")
    public String timeline(Model model, HttpSession session, @RequestParam(required = false) Map<String, String> params)
    {
        if(session.getAttribute("currentUser") == null)
            return"redirect:/login";
        else
        {
            model.addAttribute("post",this.postService.getPosts(params.getOrDefault("kw", "")));
            
            return "timeline";
        }
    }
//################################################
    @RequestMapping("/message")
    public String message() {
        return "message";
    }

    @RequestMapping("/editProfileBasic")
    public String editProfileBasic() {
        return "editProfileBasic";
    }

    @RequestMapping("/editPassword")
    public String editPassword() {
        return "editPassword";
    }

    @RequestMapping("/notification")
    public String notification() {
        return "notification";
    }

    @RequestMapping("/insights")
    public String insights() {
        return "insights";
    }



    

    @RequestMapping("/shopCart")
    public String shopCart() {
        return "shopCart";
    }

    @RequestMapping("/shopCheckout")
    public String shopCheckout() {
        return "shopCheckout";
    }
}
