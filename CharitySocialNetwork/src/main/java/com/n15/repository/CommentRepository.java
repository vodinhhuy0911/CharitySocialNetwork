/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.repository;

import com.n15.pojos.Comment;
import java.util.List;

/**
 *
 * @author vohuy
 */
public interface CommentRepository {
    List<Comment> getComment(int postId);
    Comment addComment(Comment cmt);
}
