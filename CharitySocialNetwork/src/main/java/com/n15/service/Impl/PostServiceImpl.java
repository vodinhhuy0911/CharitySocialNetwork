/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.service.Impl;

import com.cloudinary.Cloudinary;
import com.n15.pojos.Posts;
import com.n15.repository.PostRepository;
import com.n15.service.PostService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author vohuy
 */
@Service
public class PostServiceImpl implements PostService{

    @Autowired
    private Cloudinary cloudinary;
    @Autowired
    private PostRepository postRepository;
    @Override
    public List<Posts> getPosts(String kw) {
        return this.postRepository.getPosts(kw);
    }
    
}
