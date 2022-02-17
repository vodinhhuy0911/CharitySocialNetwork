/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.formatter;

import com.n15.pojos.Comment;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author vohuy
 */
public class CommentFormatter implements Formatter<Comment>{
    @Override
    public String print(Comment t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public Comment parse(String string, Locale locale) throws ParseException {
        Comment cate = new Comment();
        cate.setId(Integer.parseInt(string));
        return cate;
    }
}
