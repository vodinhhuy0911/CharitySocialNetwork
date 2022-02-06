/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.service.Impl;

import com.n15.pojos.Comment;
import com.n15.repository.CommentRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author vohuy
 */
public class CommentServiceImpl implements CommentRepository{

    @Autowired
    private CommentRepository commentRepository;
    @Override
    public List<Comment> getComment(int postId) {
        return this.commentRepository.getComment(postId);
    }
    
}
