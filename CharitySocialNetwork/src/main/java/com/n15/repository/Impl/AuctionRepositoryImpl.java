/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.repository.Impl;

import com.n15.pojos.Auction;
import com.n15.repository.AuctionRepository;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
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
public class AuctionRepositoryImpl implements AuctionRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Override
    public boolean addAuction(Auction auction) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            session.save(auction);
            return true;
        }
        catch(HibernateException e)
        {
            System.out.println(e.getMessage());
        }
        return false;
    }

    
}
