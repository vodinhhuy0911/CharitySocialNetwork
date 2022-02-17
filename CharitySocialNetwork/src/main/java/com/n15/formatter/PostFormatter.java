/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.formatter;

import com.n15.pojos.Posts;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author vohuy
 */
public class PostFormatter implements Formatter<Posts>{

    @Override
    public String print(Posts t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public Posts parse(String string, Locale locale) throws ParseException {
        Posts p = new Posts();
        p.setId(Integer.parseInt(string));
        return p;
    }
    
}
