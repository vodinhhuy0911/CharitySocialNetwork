/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.repository.Impl;

import com.n15.pojos.Posts;
import com.n15.repository.PostRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
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
public class PostRepositoryImpl implements PostRepository{

     @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Override
    public List<Posts> getPosts(String kw) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Posts> query = builder.createQuery(Posts.class);
        Root root = query.from(Posts.class);
        query = query.select(root);
        
        if(!kw.isEmpty()&& kw != null)
        {
            Predicate p = builder.like(root.get("name").as(String.class), String.format("%%%s%%", kw));
            query = query.where(p);
        }
        Query q = session.createQuery(query);
        return q.getResultList();
    }
    
}
