/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.service;

import com.n15.pojos.Categories;
import java.util.List;

/**
 *
 * @author vohuy
 */
public interface CategoryService {
    public List<Categories> getCategory();
    public Categories getCategoryById(int idCategory);
}
