/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.service.Impl;

import com.n15.pojos.Categories;
import com.n15.repository.CategoryRepository;
import com.n15.service.CategoryService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author vohuy
 */
@Service
public class CategoryServiceImpl implements CategoryService{
    
    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public List<Categories> getCategory() {
        return this.categoryRepository.getCategory();
    }
    
}
