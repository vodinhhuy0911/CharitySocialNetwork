/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.controllers;

import com.n15.pojos.Posts;
import com.n15.service.PostService;
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
public class HomeController {
    
    @Autowired
    private PostService postService;
//    @ModelAttribute
//    public void commonAttrs(Model model, HttpSession session)
//    {
//        session.getAttribute("currentUser");
//    }
    @RequestMapping("/")
    public String index(Model model, HttpSession session, @RequestParam(required = false) Map<String, String> params)
    {
        if(session.getAttribute("currentUser") == null)
            return"redirect:/login";
        else
        {
            model.addAttribute("post",this.postService.getPosts(params.getOrDefault("kw", "")));
            model.addAttribute("product",new Posts());
            return "indexLayout";
        }
    }
   
    
    @PostMapping("/")
    public String addProduct1(Model model, @ModelAttribute(value = "product") Posts post) {
        //làm trong validate confirm pass
        String error = null;
            if (this.postService.addPost(post)) {
                return "redirect:/";
            } else {
                error = "Đã có lỗi xảy ra";
            }
        
        model.addAttribute("errorMsg", error);
        return "indexLayout";

    }
}
