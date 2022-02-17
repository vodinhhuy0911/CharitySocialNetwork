/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.repository.Impl;

import com.n15.pojos.Categories;
import com.n15.repository.CategoryRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author vohuy
 */
@Repository
@Transactional
public class CategoryRepositoryImpl implements CategoryRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Categories> getCategory() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("from Categories");
        return q.getResultList();
    }

    @Override
    public Categories getCategoryById(int idCategory) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
       
        return session.get(Categories.class,idCategory);
    }

}
