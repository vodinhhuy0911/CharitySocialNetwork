/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.controllers;

import com.n15.pojos.Comment;
import com.n15.pojos.Posts;
import com.n15.pojos.User;
import com.n15.service.CategoryService;
import com.n15.service.CommentService;
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
public class HomeController {

    @Autowired
    private PostService postService;
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private CommentService commentService;
    @Autowired
    private UserService userDetailsService;
//    @ModelAttribute
//    public void commonAttrs(Model model, HttpSession session)
//    {
//        session.getAttribute("currentUser");
//    }

    @RequestMapping("/")
    public String index(Model model, HttpSession session, @RequestParam(required = false) Map<String, String> params) {
        if (session.getAttribute("currentUser") == null) {
            return "redirect:/login";
        } else {
            User u = (User) session.getAttribute("currentUser");
//            model.addAttribute("post", this.postService.getPostsById(u.getId()));
            model.addAttribute("userPost", this.userDetailsService.getUserById(u.getId()));
            model.addAttribute("product", new Posts());
//            model.addAttribute("comment", new Comment());
            model.addAttribute("cate", this.categoryService.getCategory());
            return "indexLayout";
        }
    }

    @PostMapping("/")
    public String addProduct1(HttpSession session, Model model, @ModelAttribute(value = "product") Posts post, @ModelAttribute(value = "comment") Comment comment) {
        //làm trong validate confirm pass
        String error = null;
        User user = (User) session.getAttribute("currentUser");
    
            if (this.postService.addPost(post, user)) {
                return "redirect:/";
            } else {
                error = "Đã có lỗi xảy ra";
            }
        
        model.addAttribute("errorMsg", error);
        return "indexLayout";

    }
}
