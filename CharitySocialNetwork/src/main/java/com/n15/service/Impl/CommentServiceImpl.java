/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.service.Impl;

import com.n15.pojos.Comment;
import com.n15.pojos.Posts;
import com.n15.pojos.User;
import com.n15.repository.CommentRepository;
import com.n15.repository.PostRepository;
import com.n15.repository.UserRepository;
import com.n15.service.CommentService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author vohuy
 */
@Service
public class CommentServiceImpl implements CommentService{

    @Autowired
    private CommentRepository commentRepository;
    @Autowired
    private PostRepository postRepository;
    @Autowired
    private UserRepository userRepository;
    @Override
    public List<Comment> getComment(int postId) {
        return this.commentRepository.getComment(postId);
    }

    @Override
    public Comment addComment(String cmt, int postId, int idUser) {
        Posts p = this.postRepository.getPost(postId);
        User u = this.userRepository.getUserById(idUser);
        Comment comment = new Comment();
        comment.setContentComment(cmt);
        comment.setPostId(p);
        comment.setUser(u);
        
        return this.commentRepository.addComment(comment);
    }

   
    
}
