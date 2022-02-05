/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.service.Impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.n15.pojos.User;
import com.n15.repository.UserRepository;
import com.n15.service.UserService;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

/**
 *
 * @author vohuy
 */
@Service("userDetailsService")
public class UserServiceImpl implements UserService{
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
    @Autowired
    private Cloudinary cloudinary;
    @Override
    public List<User> getUser(String keyword) {
        return this.userRepository.getUser(keyword);
    }

    @Override
    public UserDetails loadUserByUsername(String string) throws UsernameNotFoundException {
        List<User> listUser =this.getUser(string);
        if(listUser.isEmpty())
            throw new UsernameNotFoundException("Không tồn tại");
        User user = listUser.get(0);
        
        Set<GrantedAuthority> auth = new HashSet<>();
        auth.add(new SimpleGrantedAuthority(user.getUserRole()));
        return new org.springframework.security.core.userdetails.User(user.getUsername(),user.getPassword(),auth);
    }

    @Override
    public boolean addUser(User user) {
        String pass = user.getPassword();
        user.setPassword(this.passwordEncoder.encode(pass));
        user.setUserRole(User.USER);
        try {
            if(!user.getFile().isEmpty())
            {
                Map r = this.cloudinary.uploader().upload(user.getFile().getBytes(),
                        ObjectUtils.asMap("resource_type", "auto"));
                
             
                String img = (String) r.get("secure_url");
                user.setImages(img);
                
            }
            else{
                user.setImages(null);
            }
            return this.userRepository.addUser(user);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return false;
        
    }
}
