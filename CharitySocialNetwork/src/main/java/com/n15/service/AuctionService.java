/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.n15.service;

import com.n15.pojos.Auction;
import com.n15.pojos.Posts;
import com.n15.pojos.User;

/**
 *
 * @author vohuy
 */
public interface AuctionService {
    boolean addAuction(Auction auction, User user, Posts p); 
}
