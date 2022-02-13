/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.controllers;

import com.n15.pojos.Categories;
import com.n15.pojos.Posts;
import com.n15.pojos.User;
import com.n15.service.CategoryService;
import com.n15.service.PostService;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author vohuy
 */
@Controller
public class ProductController {
    
    @Autowired
    private PostService postService;
    @Autowired
    private CategoryService categoryService;
    @RequestMapping("/auction")
    public String product(Model model)
    {
        model.addAttribute("category",this.categoryService.getCategory());
        return "auction";
    }
    
    @GetMapping("/shop")
    public String shop(Model model, HttpSession session, @RequestParam(required = false) Map<String, String> params) {

        if (session.getAttribute("currentUser") == null) {
            return "redirect:/login";
        } else {
            String cateId = params.get("cateId");
            if (cateId == null) {
                model.addAttribute("product", this.postService.getPosts(params.getOrDefault("kw", "")));
            }
            else
            {
                Categories c =  this.categoryService.getCategoryById(Integer.parseInt(cateId));
                model.addAttribute("product", c.getPostsCollection());
            }
            
            return "shop";
        }
    }
//    @RequestMapping("/post")
//    public String addPostView(Model model)
//    {
//        model.addAttribute("product",new Posts());
//        return "posts";
//    }
    
//    @PostMapping("/post")
//    public String addProduct(Model model, @ModelAttribute(value = "product") Posts post) {
//        //làm trong validate confirm pass
//        String error = null;
//            if (this.postService.addPost(post)) {
//                return "redirect:/";
//            } else {
//                error = "Đã có lỗi xảy ra";
//            }
//        
//        model.addAttribute("errorMsg", error);
//        return "posts";
//
//    }
    
}
