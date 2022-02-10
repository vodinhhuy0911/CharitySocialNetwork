/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.controllers;

import com.n15.pojos.Posts;
import com.n15.pojos.User;
import com.n15.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author vohuy
 */
@Controller
public class ProductController {
    
    @Autowired
    private PostService postService;
    @RequestMapping("/auction")
    public String product()
    {
        return "auction";
    }
    @RequestMapping("/post")
    public String addPostView(Model model)
    {
        model.addAttribute("product",new Posts());
        return "posts";
    }
    
    @PostMapping("/post")
    public String addProduct(Model model, @ModelAttribute(value = "product") Posts post) {
        //làm trong validate confirm pass
        String error = null;
            if (this.postService.addPost(post)) {
                return "redirect:/";
            } else {
                error = "Đã có lỗi xảy ra";
            }
        
        model.addAttribute("errorMsg", error);
        return "posts";

    }
    
}
