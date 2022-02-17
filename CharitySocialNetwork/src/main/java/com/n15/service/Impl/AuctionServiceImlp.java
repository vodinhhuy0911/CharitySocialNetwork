/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.service.Impl;

import com.n15.pojos.Auction;
import com.n15.pojos.Posts;
import com.n15.pojos.User;
import com.n15.repository.AuctionRepository;
import com.n15.service.AuctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author vohuy
 */
@Service
public class AuctionServiceImlp implements AuctionService{

    @Autowired
    private AuctionRepository auctionRepository;
    @Override
    public boolean addAuction(Auction auction, User user, Posts p) {
        auction.setUserId(user);
        auction.setPostId(p);
        return this.auctionRepository.addAuction(auction);
    }
    
}
