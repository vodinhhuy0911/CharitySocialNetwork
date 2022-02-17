package com.n15.pojos;

import com.n15.pojos.Auction;
import com.n15.pojos.Categories;
import com.n15.pojos.Comment;
import com.n15.pojos.ImagesProduct;
import com.n15.pojos.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.7.v20200504-rNA", date="2022-02-17T16:27:03")
@StaticMetamodel(Posts.class)
public class Posts_ { 

    public static volatile CollectionAttribute<Posts, Auction> auctionCollection;
    public static volatile SingularAttribute<Posts, String> images;
    public static volatile SingularAttribute<Posts, Long> price;
    public static volatile CollectionAttribute<Posts, Comment> commentCollection;
    public static volatile SingularAttribute<Posts, Integer> id;
    public static volatile SingularAttribute<Posts, String> titles;
    public static volatile CollectionAttribute<Posts, ImagesProduct> imagesProductCollection;
    public static volatile SingularAttribute<Posts, Categories> category;
    public static volatile SingularAttribute<Posts, User> userid;
    public static volatile SingularAttribute<Posts, String> content;

}