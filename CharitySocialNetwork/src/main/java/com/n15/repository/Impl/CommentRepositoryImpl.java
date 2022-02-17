/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.repository.Impl;

import com.n15.pojos.Comment;
import com.n15.repository.CommentRepository;
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
public class CommentRepositoryImpl implements CommentRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Comment> getComment(int postId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Comment> query = builder.createQuery(Comment.class);
        Root root = query.from(Comment.class);
        query = query.select(root);
        Predicate p = builder.like(root.get("postId").as(String.class), String.format("%%%s%%", postId));
        query = query.where(p);
        Query q = session.createQuery(query);
        return q.getResultList();
    }

    @Override
    public Comment addComment(Comment cmt) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            session.save(cmt);
            return cmt;
        }
        catch(Exception ex)
        {
            System.out.print(ex.getMessage());
        }
        return null;
    }

}
