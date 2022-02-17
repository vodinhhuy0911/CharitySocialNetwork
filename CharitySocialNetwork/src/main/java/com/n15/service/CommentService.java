/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.service;

import com.n15.pojos.Comment;
import com.n15.pojos.User;
import java.util.List;

/**
 *
 * @author vohuy
 */
public interface CommentService {
    List<Comment> getComment(int postId);
    Comment addComment(String cmt, int postId, int userId);
}
