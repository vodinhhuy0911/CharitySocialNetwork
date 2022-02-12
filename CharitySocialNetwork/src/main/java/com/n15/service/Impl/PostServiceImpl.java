/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.service.Impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.n15.pojos.Posts;
import com.n15.pojos.User;
import com.n15.repository.PostRepository;
import com.n15.service.PostService;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author vohuy
 */
@Service
public class PostServiceImpl implements PostService {

    @Autowired
    private Cloudinary cloudinary;
    @Autowired
    private PostRepository postRepository;

    @Override
    public List<Posts> getPosts(String kw) {
        return this.postRepository.getPosts(kw);
    }

    @Override
    public boolean addPost(Posts post, User user) {

        try {
            Map r = this.cloudinary.uploader().upload(post.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));
            String img = (String) r.get("secure_url");
            post.setImages(img);
            post.setUser(user);
            return this.postRepository.addPost(post);
        } catch (IOException ex) {
            Logger.getLogger(PostServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

}
