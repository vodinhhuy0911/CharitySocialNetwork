package com.n15.pojos;

import com.n15.pojos.Auction;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2022-02-17T16:27:03")
@StaticMetamodel(Status.class)
public class Status_ { 

    public static volatile CollectionAttribute<Status, Auction> auctionCollection;
    public static volatile SingularAttribute<Status, Integer> idstatus;
    public static volatile SingularAttribute<Status, String> type;

}