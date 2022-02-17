/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.controllers;

import com.n15.pojos.Auction;
import com.n15.pojos.Categories;
import com.n15.pojos.Posts;
import com.n15.pojos.User;
import com.n15.service.AuctionService;
import com.n15.service.CategoryService;
import com.n15.service.PostService;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
    @Autowired
    private AuctionService auctionService;
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
    

    @GetMapping("/shopDetail/{productId}")
    public String shopDetail(Model model,HttpSession session, @PathVariable(value="productId")int productId,@RequestParam(required = false) Map<String, String> params) {
        if (session.getAttribute("currentUser") == null) {
            return "redirect:/login";
        }
        else
        {
//            String productId = params.get("productId");
            Posts p = this.postService.getPost((productId));
            model.addAttribute("product",p);
            model.addAttribute("auction",new Auction());
            return "shopDetail";
        }
    }
    @PostMapping("/shopDetail/{productId}")
    public String addAuction(HttpSession session, Model model, @PathVariable(value="productId")int productId, @ModelAttribute(value = "auction") Auction auction, @RequestParam(required = false) Map<String, String> params) {
        //làm trong validate confirm pass
        String error = null;
        User user = (User) session.getAttribute("currentUser");
//        String productId = params.get("productId");
        Posts p = this.postService.getPost((productId));
            if (this.auctionService.addAuction(auction, user,p)) {
                return "redirect:/" ;
            } else {
                error = "Đã có lỗi xảy ra";
            }
        
        model.addAttribute("errorMsg", error);
        return "shopDetail"+ productId;

    }
    
    @RequestMapping("/shopCart")
    public String productAuction(HttpSession session, Model model)
    {
        User user = (User) session.getAttribute("currentUser");
        model.addAttribute("product",user.getAuctionCollection());
        return "shopCart";
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
