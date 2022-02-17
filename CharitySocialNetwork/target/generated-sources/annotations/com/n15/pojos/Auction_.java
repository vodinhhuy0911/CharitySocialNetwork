package com.n15.pojos;

import com.n15.pojos.Posts;
import com.n15.pojos.Status;
import com.n15.pojos.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2022-02-17T16:27:03")
@StaticMetamodel(Auction.class)
public class Auction_ { 

    public static volatile SingularAttribute<Auction, Status> statusId;
    public static volatile SingularAttribute<Auction, Long> priceAuction;
    public static volatile SingularAttribute<Auction, Posts> postId;
    public static volatile SingularAttribute<Auction, Integer> idauction;
    public static volatile SingularAttribute<Auction, User> userId;

}