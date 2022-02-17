/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.controllers;

import com.n15.pojos.Comment;
import com.n15.pojos.Posts;
import com.n15.pojos.User;
import com.n15.service.CommentService;
import com.n15.service.PostService;
import java.util.List;
import java.util.Map;
import javax.ejb.TransactionAttribute;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author vohuy
 */
@RestController
@Transactional
public class ApiCommentController {

    @Autowired
    private CommentService commentService;
    @Autowired
    private PostService postService;

    @GetMapping(path="/api/test")
    public ResponseEntity<List<Posts>>asd()
    {
        List<Posts> ds = this.postService.getPostsById(1);
        return new ResponseEntity<>(ds, HttpStatus.OK);
    }
    
    @PostMapping(path = "/api/addComment")
    public ResponseEntity<Comment> addComment(HttpSession session, @RequestBody Map<String, String> params) {
        String error = "";
        try {
            String content = params.getOrDefault("contentComment", "");
            if(content.equals("") || content != null)
            {
            int postId = Integer.parseInt(params.get("postId"));
            int userId = Integer.parseInt(params.get("userId"));
            Comment c = this.commentService.addComment(content, postId, userId);
            return new ResponseEntity<>(c, HttpStatus.OK);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }
}
