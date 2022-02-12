/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.formatter;

import com.n15.pojos.Categories;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author vohuy
 */
public class CategoryFormatter implements Formatter<Categories>{

    @Override
    public String print(Categories t, Locale locale) {
        return String.valueOf(t.getIdcategories());
    }

    @Override
    public Categories parse(String string, Locale locale) throws ParseException {
        Categories cate = new Categories();
        cate.setIdcategories(Integer.parseInt(string));
        return cate;
    }
    
}
